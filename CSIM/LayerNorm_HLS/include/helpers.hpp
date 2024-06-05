#include "types.hpp"
#include "hls_stream.h"
#include "ap_int.h"


namespace xf {
//
namespace blas {
//
namespace {

template <  typename t_DataType_A, 
            typename t_AXI_DataType, 
            unsigned int nPE_LOG>
void DataMover_A(unsigned int cols_log,
                unsigned int rows,
                unsigned int addr,
                t_AXI_DataType *inputs,
                hls::stream<typename WideType<t_DataType_A, (1 << nPE_LOG) >::t_TypeInt>& stream_a,
                hls::stream<typename WideType<t_DataType_A, (1 << nPE_LOG) >::t_TypeInt>& stream_b,
                hls::stream<typename WideType<t_DataType_A, (1 << nPE_LOG) >::t_TypeInt>& stream_c
          ) {
    unsigned int cols = 1 << cols_log;
    unsigned int ram_depth = rows * cols >> nPE_LOG;
    unsigned int src_base_idx = addr/sizeof(t_AXI_DataType);
    unsigned int iter_num = cols * sizeof(t_DataType_A) / sizeof(t_AXI_DataType);
    unsigned int dram_idx = 0;
    // unsigned int sram_idx;
    typename WideType<t_DataType_A, (1 << nPE_LOG) >::t_TypeInt ram[512];
    for (int j = 0; j < iter_num; j++) {
        for (int i = 0; i < rows; i++) {    
#pragma HLS PIPELINE II = 1
            ram[iter_num * i + j] = inputs[src_base_idx + dram_idx];
            dram_idx ++;
        }
    }

    unsigned int stream_a_addr = 0 ,stream_b_addr = 0 ,stream_c_addr = 0;
    while(stream_c_addr != (ram_depth)){
        if(!stream_a.full()){
            stream_a.write(ram[stream_a_addr]);
            stream_a_addr ++;
        }

        if(!stream_b.full()){
            stream_b.write(ram[stream_b_addr]);
            stream_b_addr ++;
        }

        if(!stream_c.full()){
            stream_c.write(ram[stream_c_addr]);
            stream_c_addr ++;
        }                
    }  
}

template <typename t_DataType_A, typename t_AXI_DataType, unsigned int nPE_LOG>
void DataMover_B(unsigned int cols_log,
                unsigned int rows,
                unsigned int gamma_addr, 
                unsigned int beta_addr, 
                t_AXI_DataType *inputs,
                hls::stream<typename WideType<t_DataType_A, (1 << nPE_LOG) >::t_TypeInt>& stream_a,
                hls::stream<typename WideType<t_DataType_A, (1 << nPE_LOG) >::t_TypeInt>& stream_b
          ) {
    unsigned int cols = 1 << cols_log;
    unsigned int ram_depth = cols >> nPE_LOG;
    typename WideType<t_DataType_A, (1 << nPE_LOG) >::t_TypeInt gamma_ram[512];
    typename WideType<t_DataType_A, (1 << nPE_LOG) >::t_TypeInt beta_ram[512];

    memcpy(&gamma_ram[0], (const t_AXI_DataType *)&inputs[gamma_addr/sizeof(t_AXI_DataType)], cols * sizeof(t_DataType_A));   
    memcpy(&beta_ram[0], (const t_AXI_DataType *)&inputs[beta_addr/sizeof(t_AXI_DataType)], cols * sizeof(t_DataType_A));

    for (int i = 0; i < rows; i++) {
#pragma HLS PIPELINE II=1 rewind
        for (int j = 0; j < (cols >> nPE_LOG); j++) {
#pragma HLS UNROLL 
            stream_a.write(gamma_ram[j]);
            stream_b.write(beta_ram[j]);
        }             
    }  
}

template <  typename t_DataType_A, 
            // typename t_DataType_B, 
            unsigned int nPE_LOG
            >
void Mean(unsigned int cols_log,
            unsigned int rows,
            hls::stream<typename WideType<t_DataType_A, (1 << nPE_LOG) >::t_TypeInt>& p_x,
            hls::stream<typename WideType<t_DataType_A, 1>::t_TypeInt>& mean_a,
            hls::stream<typename WideType<t_DataType_A, 1>::t_TypeInt>& mean_b
            ) {
    unsigned int cols = 1 << cols_log;
    WideType<t_DataType_A, (1 << nPE_LOG) > valX;
    WideType<t_DataType_A, 1> mean;

    for (int k = 0; k < rows; k++) {
        int sum = 0;
        Sum:
        for (int j = 0; j < cols >> nPE_LOG; j++) {
#pragma HLS PIPELINE II=1 rewind
            valX = p_x.read();
            for (int i = 0; i < (1 << nPE_LOG); i++) {
                sum += valX[i];
            }
        }
        mean[0] = sum >> cols_log;
        mean_a.write(mean[0]);
        mean_b.write(mean[0]);
    }
}

template <  typename t_DataType_A, 
            typename t_DataType_B, 
            unsigned int nPE_LOG
            >
void StdDev(unsigned int cols_log,
            unsigned int rows,
            hls::stream<typename WideType<t_DataType_A, (1 << nPE_LOG) >::t_TypeInt>& p_x,
            hls::stream<typename WideType<t_DataType_A, 1>::t_TypeInt>& mean,
            hls::stream<typename WideType<t_DataType_B, 1>::t_TypeInt>& stddev
            ) {
    unsigned int cols = 1 << cols_log;
    WideType<t_DataType_A, (1 << nPE_LOG) > valX;
    WideType<t_DataType_A, 1> mean_val;
    WideType<t_DataType_B, 1> stddev_val;
    
    for (int k = 0; k < rows; k++) {
        int diff_sum = 0;
        mean_val[0] = mean.read();
        StdDev:
        for (int j = 0; j < cols >> nPE_LOG; j++) {
#pragma HLS PIPELINE II=1 rewind
            valX = p_x.read();
            for (int i = 0; i < (1 << nPE_LOG); i++) {
#pragma HLS UNROLL
                int diff = valX[i] - mean_val[0];
                diff_sum = diff * diff + diff_sum;
            }
        }
        stddev_val[0] = hls::sqrt(t_DataType_B(diff_sum >> cols_log));
        stddev.write(stddev_val);
    }
}

template <typename t_DataType_A, typename t_DataType_B, unsigned int nPE_LOG>
void Norm(unsigned int cols_log,
            unsigned int rows,
            hls::stream<typename WideType<t_DataType_A, (1 << nPE_LOG) >::t_TypeInt>& p_x,
            hls::stream<typename WideType<t_DataType_A, 1>::t_TypeInt>& mean,
            hls::stream<typename WideType<t_DataType_B, 1>::t_TypeInt>& stddev,
            hls::stream<typename WideType<t_DataType_A, (1 << nPE_LOG) >::t_TypeInt>& gamma,
            hls::stream<typename WideType<t_DataType_A, (1 << nPE_LOG) >::t_TypeInt>& beta,
            hls::stream<typename WideType<t_DataType_A, (1 << nPE_LOG) >::t_TypeInt>& norm
          ) {
    unsigned int cols = 1 << cols_log;
    WideType<t_DataType_A, (1 << nPE_LOG) > valX;
    WideType<t_DataType_A, (1 << nPE_LOG) > norm_val;
    WideType<t_DataType_B, (1 << nPE_LOG) > norm_val_temp;
    WideType<int, (1 << nPE_LOG) > norm_val_temp1;
    WideType<t_DataType_A, (1 << nPE_LOG) > gamma_val;
    WideType<t_DataType_A, (1 << nPE_LOG) > beta_val;
    WideType<t_DataType_A, 1> mean_val;
    WideType<t_DataType_B, 1> stddev_val;

    for (int k = 0; k < rows; k++) {
        mean_val = mean.read();
        stddev_val = stddev.read();
        norm:
        for (int j = 0; j < cols >> nPE_LOG; j++) {
#pragma HLS PIPELINE II=1 rewind
            valX = p_x.read();
            gamma_val = gamma.read();
            beta_val = beta.read();
            for (int i = 0; i < (1 << nPE_LOG); i++) {
#pragma HLS UNROLL
                norm_val_temp[i] = (valX[i] - mean_val[0]) / (stddev_val[0] + 0.00001);
                norm_val_temp1[i] = norm_val_temp[i] * gamma_val[i] + beta_val[i];
                if(norm_val_temp1[i] < 0){
                	norm_val[i] = 0;
                }
                else if(norm_val_temp1[i] > 127){
                	norm_val[i] = 127;
                }
                else{
                	norm_val[i] = norm_val_temp1[i];
                }
            }
            norm.write(norm_val);
        }
    }
    
}

template <typename t_DataType_A, unsigned int nPE_LOG>
void Relu(unsigned int cols_log,
            unsigned int rows,
            hls::stream<typename WideType<t_DataType_A, (1 << nPE_LOG) >::t_TypeInt>& p_x,
            hls::stream<typename WideType<t_DataType_A, (1 << nPE_LOG) >::t_TypeInt>& p_y
          ) {
    unsigned int cols = 1 << cols_log;
    WideType<t_DataType_A, (1 << nPE_LOG) > l_x;
    WideType<t_DataType_A, (1 << nPE_LOG) > l_y;
    for (int j = 0; j < rows * cols >> nPE_LOG; j++) {
#pragma HLS PIPELINE II=1 rewind
        l_x = p_x.read();
        for (int i = 0; i < (1 << nPE_LOG); i++) {    
#pragma HLS UNROLL  
            if(l_x[i] > 0){
                l_y[i] = l_x[i];
            }
            else{
                l_y[i] = 0;
            }
            
        }
        p_y.write(l_y);
    }
}

template <typename t_DataType_A, typename t_AXI_DataType, unsigned int nPE_LOG>
void Store(unsigned int cols_log,
            unsigned int rows,
            unsigned int addr, 
            t_AXI_DataType *outputs,
            unsigned int &done, 
            hls::stream<typename WideType<t_DataType_A, (1 << nPE_LOG) >::t_TypeInt>& p_x
          ) {
    unsigned int cols = 1 << cols_log;
    unsigned int base_dst_idx = addr / sizeof(t_AXI_DataType);
    unsigned int dst_idx = 0;
    unsigned int iter_num = cols >> nPE_LOG;
    for (int j = 0; j < rows; j++) {
    	dst_idx = base_dst_idx + j;
        for (int i = 0; i < iter_num; i++) {
#pragma HLS PIPELINE  II = 1         
            typename WideType<t_DataType_A, (1 << nPE_LOG) >::t_TypeInt l_x = p_x.read();
            outputs[dst_idx] = l_x;
            dst_idx = dst_idx + rows;
#pragma HLS BIND_OP variable=dst_idx op=add impl=fabric latency=2
        }
    }
    done = 1;
}

}
} // end namespace blas

} // end namespace xf