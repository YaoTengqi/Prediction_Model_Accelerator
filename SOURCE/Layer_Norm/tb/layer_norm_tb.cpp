#include "../src/layernorm.hpp"
#include "../include/binFiles.hpp"
#include "../include/utils.hpp"

int main() {
    string basedir = "/media/sy/data/project/Large_Project_Phase_2/layer_norm/layernorm-pytorch/data/";

    vector<t_AXI_DataType> input_data, golden;
    vector<t_AXI_DataType> output_data(ROWS * COLS * sizeof(t_OutDataType) / sizeof(t_AXI_DataType), 0);
    ap_uint<32> input_data_addr = 0;
    ap_uint<32> gama_addr = ROWS * COLS * sizeof(t_InpDataType);
    ap_uint<32> beta_addr = gama_addr + COLS * sizeof(t_ParaType);
    ap_uint<32> output_data_addr = 0;
    uint32_t rows = ROWS;
	uint32_t cols_log = COLS_LOG;

    readBin(basedir + "dram.bin", sizeof(t_InpDataType) * ROWS * COLS * 2 + sizeof(t_ParaType) * COLS * 2, input_data);
    readBin(basedir + "output_data.bin", sizeof(t_OutDataType) * ROWS * COLS, golden);

    layernorm(
        input_data_addr,
        gama_addr,
        beta_addr,
        output_data_addr,
		rows,
		cols_log,
        input_data.data(),
        output_data.data(),
		input_data.data());

    int err = 0;
    bool l_compare = compare(ROWS * COLS * sizeof(t_OutDataType) / sizeof(t_AXI_DataType), golden.data(), output_data.data(), err);
    // bool l_compare = true;
    
    if (l_compare) {
        cout << "Pass!\n";
        return 0;
    } else {
        cout << "Fail with " << err << " errors!\n";
        return -1;
    }

}
