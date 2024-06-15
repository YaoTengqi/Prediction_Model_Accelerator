#include "../src/layernorm.hpp"
#include "../include/binFiles.hpp"
#include "../include/utils.hpp"

int main() {
    string basedir = "/home/ytq/codeField/temp_MM_Accelerator/insn/GCN/nochange_gcn/resnet18/3/";

    vector<t_AXI_DataType> input_data, paras, golden;
    vector<t_AXI_DataType> output_data(ROWS * COLS * sizeof(t_OutDataType) / sizeof(t_AXI_DataType), 0);
    ap_uint<32> input_data_addr = 0;
    ap_uint<32> gama_addr = 0;//0
    ap_uint<32> beta_addr = 512;//0
//    ap_uint<32> input_data_addr = 49152;
//     ap_uint<32> gama_addr = 65536;//1
//     ap_uint<32> gama_addr = 339968;//2
//    ap_uint<32> gama_addr = 614400;//3
    // ap_uint<32> gama_addr = 888832;//4
//     ap_uint<32> beta_addr = 69632;//1
//     ap_uint<32> beta_addr = 344064;//2
//    ap_uint<32> beta_addr = 618496;//3
    // ap_uint<32> beta_addr = 892928;//4
//    ap_uint<32> output_data_addr = 12288;
    ap_uint<32> output_data_addr = 0;
    uint32_t rows = ROWS;
	uint32_t cols_log = COLS_LOG;
    uint32_t q_value = 1000;
    uint32_t shift_value = 3;
    uint32_t done;

    readBin(basedir + "data.bin", 16384, input_data);
    readBin(basedir + "paras.bin", 1024, paras);
    readBin(basedir + "store.bin", 16384, golden);

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
		paras.data());

    writeBin(basedir + "dram_before.bin", 16384, input_data);
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
