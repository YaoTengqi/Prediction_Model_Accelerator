#include "../src/sparse.hpp"
#include "../include/binFiles.hpp"
#include "../include/utils.hpp"

int main()
{
	int am_ROWS = 32;
	int am_COLS = 32;
	int fm_ROWS = 32;
	int fm_COLS = 512;
	int quant_flag = 3;
	int16_t matmul_mul[4] = {1246,213,1197,130};
    int matmul_shift[4] = {7,9,8,9};
    int quant_shift = matmul_shift[quant_flag];
    int quant_mul = matmul_mul[quant_flag];
	string basedir = "/home/ytq/codeField/temp_MM_Accelerator/insn/GCN/resnet18/11/";
	vector<t_AXI_DataType> input_data, golden;
	vector<t_AXI_DataType> output_data(am_ROWS * fm_COLS * sizeof(t_DataType_IN), 0);
	ap_uint<32> input_data_addr1 = 12288 * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	ap_uint<32> input_data_addr2 = 8192 * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	//	ap_uint<32> input_data_addr2 = 4096 * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	ap_uint<32> input_data_addr3 = 49152 * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	bool sparse_flag = false;

	readBin(basedir + "dram_before.bin", sizeof(t_DataType_IN) * am_ROWS * (am_COLS + fm_COLS), input_data);
	readBin(basedir + "dram_after.bin", sizeof(t_DataType_IN) * am_ROWS * fm_COLS, golden);
	sparse(input_data_addr1,
		   input_data_addr2,
		   input_data_addr3,
		   am_ROWS,
		   am_COLS,
		   fm_ROWS,
		   fm_COLS,
		   input_data.data(),
		   output_data.data(),
		   quant_shift,
		   quant_mul,
		   sparse_flag);

	int err = memcmp(&output_data[input_data_addr3], &golden[input_data_addr3], fm_ROWS * fm_COLS * sizeof(t_DataType_IN));

	if (err == 0 && sparse_flag)
	{
		cout << "Pass!\n";
		return 0;
	}
	else
	{
		cout << "Fail with " << err << " errors!\n";
		return 0;
	}
}
