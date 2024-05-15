#include "../src/reshape.hpp"
#include "../include/binFiles.hpp"
#include "../include/utils.hpp"


int main(){
	bool reshape_flag = false;
	unsigned int ROWS = 8;
	unsigned int COLS = 32;
	string basedir = "/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Reshape_HLS/data/";
	vector<t_AXI_DataType> input_data, golden;
	vector<t_AXI_DataType> output_data(ROWS * COLS * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType), 0);
	ap_uint<32> input_data_addr = 0;

	readBin(basedir + "dram.bin", sizeof(t_DataType_IN) * ROWS * COLS, input_data);
	readBin(basedir + "output_data.bin", sizeof(t_DataType_OUT) * ROWS * COLS, golden);
	reshape(input_data_addr,
			input_data.data(),
			output_data.data(),
			ROWS,
			COLS,
			reshape_flag);

	int err = 0;
    bool concat_compare = compare(ROWS * COLS  * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType), golden.data(), output_data.data(), err);

    if (concat_compare && reshape_flag) {
        cout << "Pass!\n";
        return 0;
    } else {
        cout << "Fail with " << err << " errors!\n";
        return -1;
    }
}
