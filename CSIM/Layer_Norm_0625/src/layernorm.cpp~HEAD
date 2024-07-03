#include "layernorm.hpp"

void layernorm(
    uint32_t input_data_addr,
    uint32_t gama_addr,
    uint32_t beta_addr,
    uint32_t output_data_addr,
    uint32_t rows,
    uint32_t cols_log,
    uint32_t q_value,
    uint32_t shift_value,
    uint32_t &done,
    t_AXI_DataType *inputs,
    t_AXI_DataType *outputs,
    t_AXI_DataType *paras)
{

#pragma HLS INTERFACE mode = m_axi port = inputs bundle = ln_data latency = 32 num_write_outstanding = 1 num_read_outstanding = 64 max_write_burst_length = 64 max_read_burst_length = 64 depth = M_AXI_DEPTH
#pragma HLS INTERFACE mode = m_axi port = outputs bundle = ln_data latency = 32 num_write_outstanding = 1 num_read_outstanding = 64 max_write_burst_length = 64 max_read_burst_length = 64 depth = M_AXI_DEPTH
#pragma HLS INTERFACE mode = m_axi port = paras bundle = ln_paras latency = 32 num_write_outstanding = 1 num_read_outstanding = 64 max_write_burst_length = 64 max_read_burst_length = 64 depth = M_AXI_DEPTH
#pragma HLS INTERFACE s_axilite port = input_data_addr bundle = ln_addr
#pragma HLS INTERFACE s_axilite port = gama_addr bundle = ln_addr
#pragma HLS INTERFACE s_axilite port = beta_addr bundle = ln_addr
#pragma HLS INTERFACE s_axilite port = output_data_addr bundle = ln_addr
#pragma HLS INTERFACE s_axilite port = rows bundle = ln_addr
#pragma HLS INTERFACE s_axilite port = cols_log bundle = ln_addr
#pragma HLS INTERFACE s_axilite port = q_value bundle = ln_addr
#pragma HLS INTERFACE s_axilite port = shift_value bundle = ln_addr
#pragma HLS INTERFACE s_axilite port = done bundle = ln_addr
#pragma HLS INTERFACE s_axilite port = return bundle = ln_addr

    hls::stream<typename WideType<t_InpDataType, nPE>::t_TypeInt> data_copy_a;
#pragma HLS STREAM variable = data_copy_a depth = 16
    hls::stream<typename WideType<t_InpDataType, nPE>::t_TypeInt> data_copy_b;
#pragma HLS STREAM variable = data_copy_b depth = 16
    hls::stream<typename WideType<t_InpDataType, nPE>::t_TypeInt> data_copy_c;
#pragma HLS STREAM variable = data_copy_c depth = 16
    hls::stream<typename WideType<t_InpDataType, nPE>::t_TypeInt> gamma;
#pragma HLS STREAM variable = gamma depth = 16
    hls::stream<typename WideType<t_InpDataType, nPE>::t_TypeInt> beta;
#pragma HLS STREAM variable = beta depth = 16
    hls::stream<typename WideType<t_InpDataType, 1>::t_TypeInt> mean_a;
#pragma HLS STREAM variable = mean_a depth = 32
    hls::stream<typename WideType<t_InpDataType, 1>::t_TypeInt> mean_b;
#pragma HLS STREAM variable = mean_b depth = 32
    hls::stream<typename WideType<t_ParaType, 1>::t_TypeInt> stddev;
#pragma HLS STREAM variable = stddev depth = 32
    hls::stream<typename WideType<t_InpDataType, nPE>::t_TypeInt> norm;
#pragma HLS STREAM variable = norm depth = 16
    hls::stream<typename WideType<t_OutDataType, nPE>::t_TypeInt> store_temp;
#pragma HLS STREAM variable = store_temp depth = 16
#pragma HLS DATAFLOW
    DataMover_A<t_InpDataType, t_AXI_DataType, nPE_LOG>(cols_log, rows, input_data_addr, inputs, data_copy_a, data_copy_b, data_copy_c);
    DataMover_B<t_InpDataType, t_AXI_DataType, nPE_LOG>(cols_log, rows, gama_addr, beta_addr, paras, gamma, beta);
    Mean<t_InpDataType, nPE_LOG>(cols_log, rows, data_copy_a, mean_a, mean_b);
    StdDev<t_InpDataType, t_ParaType, nPE_LOG>(cols_log, rows, data_copy_b, mean_a, stddev);
    Norm<t_InpDataType, t_ParaType, nPE_LOG>(cols_log, rows, data_copy_c, mean_b, stddev, gamma, beta, norm);
    //    Relu<t_OutDataType, nPE_LOG>(cols_log, rows, norm, relu);
    Store_temp<t_OutDataType, t_AXI_DataType, nPE_LOG>(cols_log, rows, norm, store_temp);
    Store<t_OutDataType, t_AXI_DataType, nPE_LOG>(cols_log, rows, output_data_addr, outputs, done, store_temp);
}
