// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of input_data_addr1
//        bit 31~0 - input_data_addr1[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of input_data_addr2
//        bit 31~0 - input_data_addr2[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of output_data_addr3
//        bit 31~0 - output_data_addr3[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of ROWS
//        bit 31~0 - ROWS[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of COLS
//        bit 31~0 - COLS[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of inputs
//        bit 31~0 - inputs[31:0] (Read/Write)
// 0x3c : Data signal of inputs
//        bit 31~0 - inputs[63:32] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of outputs
//        bit 31~0 - outputs[31:0] (Read/Write)
// 0x48 : Data signal of outputs
//        bit 31~0 - outputs[63:32] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of concat_flag
//        bit 0  - concat_flag[0] (Read)
//        others - reserved
// 0x54 : Control signal of concat_flag
//        bit 0  - concat_flag_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONCAT_ADDR_ADDR_AP_CTRL                0x00
#define CONCAT_ADDR_ADDR_GIE                    0x04
#define CONCAT_ADDR_ADDR_IER                    0x08
#define CONCAT_ADDR_ADDR_ISR                    0x0c
#define CONCAT_ADDR_ADDR_INPUT_DATA_ADDR1_DATA  0x10
#define CONCAT_ADDR_BITS_INPUT_DATA_ADDR1_DATA  32
#define CONCAT_ADDR_ADDR_INPUT_DATA_ADDR2_DATA  0x18
#define CONCAT_ADDR_BITS_INPUT_DATA_ADDR2_DATA  32
#define CONCAT_ADDR_ADDR_OUTPUT_DATA_ADDR3_DATA 0x20
#define CONCAT_ADDR_BITS_OUTPUT_DATA_ADDR3_DATA 32
#define CONCAT_ADDR_ADDR_ROWS_DATA              0x28
#define CONCAT_ADDR_BITS_ROWS_DATA              32
#define CONCAT_ADDR_ADDR_COLS_DATA              0x30
#define CONCAT_ADDR_BITS_COLS_DATA              32
#define CONCAT_ADDR_ADDR_INPUTS_DATA            0x38
#define CONCAT_ADDR_BITS_INPUTS_DATA            64
#define CONCAT_ADDR_ADDR_OUTPUTS_DATA           0x44
#define CONCAT_ADDR_BITS_OUTPUTS_DATA           64
#define CONCAT_ADDR_ADDR_CONCAT_FLAG_DATA       0x50
#define CONCAT_ADDR_BITS_CONCAT_FLAG_DATA       1
#define CONCAT_ADDR_ADDR_CONCAT_FLAG_CTRL       0x54
