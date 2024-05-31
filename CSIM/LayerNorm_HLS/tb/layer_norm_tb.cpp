#include "../src/layernorm.hpp"
#include "../include/binFiles.hpp"
#include "../include/utils.hpp"

int main() {
    string basedir = "/media/sy/data/project/Large_Project_Phase_2/dram/3/";

    vector<t_AXI_DataType> input_data, golden;
    vector<t_AXI_DataType> output_data(ROWS * COLS * sizeof(t_OutDataType) / sizeof(t_AXI_DataType), 0);
    ap_uint<32> input_data_addr = 49152;
    ap_uint<32> gama_addr = 65536;
    ap_uint<32> beta_addr = 69632;
    ap_uint<32> output_data_addr = 12288;
    uint32_t rows = ROWS;
	uint32_t cols_log = COLS_LOG;
    uint32_t q_value = 1000;
    uint32_t shift_value = 3;
    uint32_t done;

    readBin(basedir + "dram_before.bin", 168685568 , input_data);
    readBin(basedir + "dram_after.bin", 168685568, golden);

    layernorm(
        input_data_addr,
        gama_addr,
        beta_addr,
        output_data_addr,
		rows,
		cols_log,
        q_value,
        shift_value,
        done,
        input_data.data(),
        input_data.data(),
		input_data.data());

    writeBin(basedir + "dram_before.bin", 168685568 , input_data);
    int err = 0;
     bool l_compare = compare(ROWS * COLS * sizeof(t_OutDataType) / sizeof(t_AXI_DataType), golden.data(), input_data.data(), err);
//    bool l_compare = true;
    
    if (l_compare) {
        cout << "Pass!\n";
        return 0;
    } else {
        cout << "Fail with " << err << " errors!\n";
        return -1;
    }

}
