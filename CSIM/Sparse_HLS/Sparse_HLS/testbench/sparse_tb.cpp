#include "../src/sparse.hpp"
#include "../include/binFiles.hpp"
#include "../include/utils.hpp"

int main()
{
	int am_ROWS = 256;
	int am_COLS = 256;
	int fm_ROWS = 256;
	int fm_COLS = 512;
	int quant_flag = 2;
	static int matmul_mul[4] = {1246581376,2139844096,1197571584,1302173056};
	static int matmul_shift[4] = {7,9,8,9};
//	int matmul_mul[16] = {1725677952, 1901978368, 2116203008, 1335510784,
//            			  1917468928, 1360456448, 1648236928, 1439656320,
//						  1608364288, 1237730944, 1122593664, 1295856256,
//						  1651682688, 1227862016, 2081486976, 1306002944};
//    int  matmul_shift[16] = {8, 9, 9, 9,
//            				 8, 8, 9, 9,
//							 8, 8, 8, 9,
//							 8, 8, 9, 9};
    int quant_shift = matmul_shift[quant_flag];
    int quant_mul = matmul_mul[quant_flag];
	string basedir = "/home/ytq/codeField/Prediction_Model_Accelerator/CSIM/data/8/";
	vector<t_AXI_DataType> input_data, golden;
	vector<t_AXI_DataType> output_data(am_ROWS * fm_COLS * sizeof(t_DataType_IN), 0);
	ap_uint<32> input_data_addr1 = 360448;
	ap_uint<32> input_data_addr2 = 294912;
	ap_uint<32> input_data_addr3 = 524288;
	bool sparse_flag = false;

	readBin(basedir + "dram_before.bin", 169623552, input_data);
	readBin(basedir + "dram_after.bin", 169623552, golden);
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

	input_data_addr3 = input_data_addr3 * sizeof(t_DataType_IN) / sizeof(t_AXI_DataType);
	int err = memcmp(&output_data[input_data_addr3], &golden[input_data_addr3], fm_ROWS * fm_COLS * sizeof(t_DataType_IN));
	for (size_t i = 0; i < 4096; ++i) {
        if (output_data[input_data_addr3 + i] != golden[input_data_addr3 + i]) {
            cout << "Mismatch at position " << i << ": output_data[" << input_data_addr3 + i << "] = "
                 << output_data[input_data_addr3 + i] << ", golden[" << input_data_addr3 + i << "] = "
                 << golden[input_data_addr3 + i] << endl;
        }
    }
	if (err == 0 && sparse_flag)
	{
		cout << "Pass!\n";
		return 0;
	}
	else
	{
		cout << "Fail with " << err << " errors!\n";
		return -1;
	}
}
