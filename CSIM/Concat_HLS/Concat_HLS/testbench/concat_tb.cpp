#include "../src/concat.hpp"
#include "../include/binFiles.hpp"


int main(){
	unsigned int ROWS = 32;
	unsigned int COLS = 32;
	string basedir = "/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Concat_HLS/data/";
	vector<t_AXI_DataType> input_data, golden;
	vector<t_AXI_DataType> output_data(ROWS * COLS * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType), 0);
	ap_uint<32> input_data_addr1 = 0;
//	ap_uint<32> input_data_addr2 = (ROWS * COLS) * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	ap_uint<32> input_data_addr2 = 4096 * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	ap_uint<32> input_data_addr3 = 8192 * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	bool concat_flag = false;

	readBin(basedir + "dram_before.bin", sizeof(t_DataType_IN) * ROWS * COLS * 2, input_data);
	readBin(basedir + "dram_after.bin", sizeof(t_DataType_OUT) * ROWS * COLS * 2, golden);
	concat( input_data_addr1,
			input_data_addr2,
			input_data_addr3,
			ROWS,
			COLS,
			input_data.data(),
			output_data.data(),
			concat_flag
			);

	int err = memcmp(&output_data[0], &golden[input_data_addr3], ROWS * COLS * 2 * sizeof(t_DataType_IN));
    if (err == 0 && concat_flag) {
        cout << "Pass!\n";
        return 0;
    } else {
        cout << "Fail with " << err << " errors!\n";
        return -1;
    }
}
