#include "../src/concat.hpp"
#include "../include/binFiles.hpp"


int main(){
	unsigned int ROWS = 64;
	unsigned int COLS = 128;
	string basedir = "/home/ytq/codeField/temp_MM_Accelerator/insn/prediction/concat/3/";
	vector<t_AXI_DataType> input_data, golden;
	vector<t_AXI_DataType> output_data(168046592, 0);
//	ap_uint<32> input_data_addr1 = 208896 * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
//	ap_uint<32> input_data_addr2 = 131072 * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	ap_uint<32> input_data_addr2 = 208896 * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	ap_uint<32> input_data_addr1 = 131072 * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	ap_uint<32> input_data_addr3 = 237568 * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
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

	int err = 0;
	t_AXI_DataType *outputPtr = output_data.data();
	t_AXI_DataType *goldenPtr = golden.data();
	for(int i = 0; i < ROWS * COLS * 2 * sizeof(t_DataType_OUT) / sizeof(t_AXI_DataType); i++){
		t_AXI_DataType tempOutput = outputPtr[input_data_addr3 + i];
		t_AXI_DataType tempGolden = goldenPtr[input_data_addr3 + i];
		if(tempOutput != tempGolden){
			std::cout << "outputPtr: " << tempOutput << std::endl;
			std::cout << "goldenPtr: " << tempGolden << std::endl;
			err++;
		}
	}
	if (err == 0 && concat_flag) {
        cout << "Pass!\n";
        return 0;
    } else {
        cout << "Fail with " << err << " errors!\n";
        return -1;
    }
}
