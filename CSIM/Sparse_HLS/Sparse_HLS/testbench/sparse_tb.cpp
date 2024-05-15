#include "../src/sparse.hpp"
#include "../include/binFiles.hpp"
#include "../include/utils.hpp"


int main(){
	unsigned int ROWS = 32;
	unsigned int COLS = 32;
	string basedir = "/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/Concat_HLS/Concat_HLS/data/";
	vector<t_AXI_DataType> input_data, golden;
	vector<t_AXI_DataType> output_data(ROWS * COLS * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType), 0);
	ap_uint<32> input_data_addr1 = 0;
//	ap_uint<32> input_data_addr2 = (ROWS * COLS) * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	ap_uint<32> input_data_addr2 = 4096 * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	ap_uint<32> input_data_addr3 = 8192 * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	bool concat_flag = false;

	readBin(basedir + "dram.bin", sizeof(t_DataType_IN) * ROWS * COLS * 2 * 81928, input_data);
	readBin(basedir + "output_data.bin", sizeof(t_DataType_OUT) * ROWS * COLS * 2 * 81928, golden);
	concat( input_data_addr1,
			input_data_addr2,
			input_data_addr3,
			ROWS,
			COLS,
			input_data.data(),
			output_data.data(),
			concat_flag
			);
	bool all_match = true;
	int output_data_offset = input_data_addr3;
	typename WideType<t_DataType_OUT, nPE>::t_TypeInt ram[1024];
	typename WideType<t_DataType_OUT, nPE>::t_TypeInt output[1024];
	memcpy(&ram[0], (const t_AXI_DataType *)&golden[output_data_offset], 2 * ROWS * COLS * sizeof(t_DataType_OUT));
	memcpy(&output[0], (const t_AXI_DataType *)&output_data[0], 2 * ROWS * COLS * sizeof(t_DataType_OUT));
	for (int i = 0; i < ROWS * COLS * 2 * sizeof(t_DataType_OUT) / sizeof(t_AXI_DataType) * 8; ++i) {
		 if (ram[i] != output[i]) {
	        all_match = false;
       }
	 }
	if(all_match){
		printf("All Pass!");
	}
}
