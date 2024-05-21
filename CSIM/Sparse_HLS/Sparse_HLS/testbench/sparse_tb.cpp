#include "../src/sparse.hpp"
#include "../include/binFiles.hpp"
#include "../include/utils.hpp"


int main(){
	unsigned int am_ROWS = 32;
	unsigned int am_COLS = 32;
	unsigned int fm_ROWS = 32;
	unsigned int fm_COLS = 512;
	string basedir = "/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Sparse_HLS/DATA/data/";
	vector<t_AXI_DataType> input_data, golden;
	vector<t_AXI_DataType> output_data(am_ROWS * fm_COLS * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType), 0);
	ap_uint<32> input_data_addr1 = 0;
	ap_uint<32> input_data_addr2 = (fm_ROWS * fm_COLS) * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
//	ap_uint<32> input_data_addr2 = 4096 * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	ap_uint<32> input_data_addr3 = 20480  * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	bool sparse_flag = false;

	readBin(basedir + "dram_before.bin", sizeof(t_DataType_IN) * am_ROWS * (am_COLS + fm_COLS), input_data);
	readBin(basedir + "dram_after.bin", sizeof(t_DataType_IN) * am_ROWS * fm_COLS, golden);
	sparse( input_data_addr1,
			input_data_addr2,
			input_data_addr3,
			am_ROWS,
			am_COLS,
			fm_ROWS,
		    fm_COLS,
			input_data.data(),
			output_data.data(),
			sparse_flag
			);

	int err = memcmp(&output_data[0], &golden[input_data_addr3], am_ROWS * fm_COLS  * sizeof(t_DataType_IN));

    if (err == 0 && sparse_flag) {
        cout << "Pass!\n";
        return 0;
    } else {
        cout << "Fail with " << err << " errors!\n";
        return -1;
    }
}

