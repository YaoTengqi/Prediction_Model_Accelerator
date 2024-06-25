// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module layernorm_ln_addr_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 8,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [31:0]                   input_data_addr,
    output wire [31:0]                   gama_addr,
    output wire [31:0]                   beta_addr,
    output wire [31:0]                   output_data_addr,
    output wire [31:0]                   rows,
    output wire [31:0]                   cols_log,
    output wire [31:0]                   q_value,
    output wire [31:0]                   shift_value,
    input  wire [31:0]                   done,
    input  wire                          done_ap_vld,
    output wire [63:0]                   inputs,
    output wire [63:0]                   outputs,
    output wire [63:0]                   paras,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
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
// 0x10 : Data signal of input_data_addr
//        bit 31~0 - input_data_addr[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of gama_addr
//        bit 31~0 - gama_addr[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of beta_addr
//        bit 31~0 - beta_addr[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of output_data_addr
//        bit 31~0 - output_data_addr[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of rows
//        bit 31~0 - rows[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of cols_log
//        bit 31~0 - cols_log[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of q_value
//        bit 31~0 - q_value[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of shift_value
//        bit 31~0 - shift_value[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of done
//        bit 31~0 - done[31:0] (Read)
// 0x54 : Control signal of done
//        bit 0  - done_ap_vld (Read/COR)
//        others - reserved
// 0x60 : Data signal of inputs
//        bit 31~0 - inputs[31:0] (Read/Write)
// 0x64 : Data signal of inputs
//        bit 31~0 - inputs[63:32] (Read/Write)
// 0x68 : reserved
// 0x6c : Data signal of outputs
//        bit 31~0 - outputs[31:0] (Read/Write)
// 0x70 : Data signal of outputs
//        bit 31~0 - outputs[63:32] (Read/Write)
// 0x74 : reserved
// 0x78 : Data signal of paras
//        bit 31~0 - paras[31:0] (Read/Write)
// 0x7c : Data signal of paras
//        bit 31~0 - paras[63:32] (Read/Write)
// 0x80 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                 = 8'h00,
    ADDR_GIE                     = 8'h04,
    ADDR_IER                     = 8'h08,
    ADDR_ISR                     = 8'h0c,
    ADDR_INPUT_DATA_ADDR_DATA_0  = 8'h10,
    ADDR_INPUT_DATA_ADDR_CTRL    = 8'h14,
    ADDR_GAMA_ADDR_DATA_0        = 8'h18,
    ADDR_GAMA_ADDR_CTRL          = 8'h1c,
    ADDR_BETA_ADDR_DATA_0        = 8'h20,
    ADDR_BETA_ADDR_CTRL          = 8'h24,
    ADDR_OUTPUT_DATA_ADDR_DATA_0 = 8'h28,
    ADDR_OUTPUT_DATA_ADDR_CTRL   = 8'h2c,
    ADDR_ROWS_DATA_0             = 8'h30,
    ADDR_ROWS_CTRL               = 8'h34,
    ADDR_COLS_LOG_DATA_0         = 8'h38,
    ADDR_COLS_LOG_CTRL           = 8'h3c,
    ADDR_Q_VALUE_DATA_0          = 8'h40,
    ADDR_Q_VALUE_CTRL            = 8'h44,
    ADDR_SHIFT_VALUE_DATA_0      = 8'h48,
    ADDR_SHIFT_VALUE_CTRL        = 8'h4c,
    ADDR_DONE_DATA_0             = 8'h50,
    ADDR_DONE_CTRL               = 8'h54,
    ADDR_INPUTS_DATA_0           = 8'h60,
    ADDR_INPUTS_DATA_1           = 8'h64,
    ADDR_INPUTS_CTRL             = 8'h68,
    ADDR_OUTPUTS_DATA_0          = 8'h6c,
    ADDR_OUTPUTS_DATA_1          = 8'h70,
    ADDR_OUTPUTS_CTRL            = 8'h74,
    ADDR_PARAS_DATA_0            = 8'h78,
    ADDR_PARAS_DATA_1            = 8'h7c,
    ADDR_PARAS_CTRL              = 8'h80,
    WRIDLE                       = 2'd0,
    WRDATA                       = 2'd1,
    WRRESP                       = 2'd2,
    WRRESET                      = 2'd3,
    RDIDLE                       = 2'd0,
    RDDATA                       = 2'd1,
    RDRESET                      = 2'd2,
    ADDR_BITS                = 8;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_interrupt = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    wire                          auto_restart_done;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [31:0]                   int_input_data_addr = 'b0;
    reg  [31:0]                   int_gama_addr = 'b0;
    reg  [31:0]                   int_beta_addr = 'b0;
    reg  [31:0]                   int_output_data_addr = 'b0;
    reg  [31:0]                   int_rows = 'b0;
    reg  [31:0]                   int_cols_log = 'b0;
    reg  [31:0]                   int_q_value = 'b0;
    reg  [31:0]                   int_shift_value = 'b0;
    reg                           int_done_ap_vld;
    reg  [31:0]                   int_done = 'b0;
    reg  [63:0]                   int_inputs = 'b0;
    reg  [63:0]                   int_outputs = 'b0;
    reg  [63:0]                   int_paras = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                    rdata[9] <= int_interrupt;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_INPUT_DATA_ADDR_DATA_0: begin
                    rdata <= int_input_data_addr[31:0];
                end
                ADDR_GAMA_ADDR_DATA_0: begin
                    rdata <= int_gama_addr[31:0];
                end
                ADDR_BETA_ADDR_DATA_0: begin
                    rdata <= int_beta_addr[31:0];
                end
                ADDR_OUTPUT_DATA_ADDR_DATA_0: begin
                    rdata <= int_output_data_addr[31:0];
                end
                ADDR_ROWS_DATA_0: begin
                    rdata <= int_rows[31:0];
                end
                ADDR_COLS_LOG_DATA_0: begin
                    rdata <= int_cols_log[31:0];
                end
                ADDR_Q_VALUE_DATA_0: begin
                    rdata <= int_q_value[31:0];
                end
                ADDR_SHIFT_VALUE_DATA_0: begin
                    rdata <= int_shift_value[31:0];
                end
                ADDR_DONE_DATA_0: begin
                    rdata <= int_done[31:0];
                end
                ADDR_DONE_CTRL: begin
                    rdata[0] <= int_done_ap_vld;
                end
                ADDR_INPUTS_DATA_0: begin
                    rdata <= int_inputs[31:0];
                end
                ADDR_INPUTS_DATA_1: begin
                    rdata <= int_inputs[63:32];
                end
                ADDR_OUTPUTS_DATA_0: begin
                    rdata <= int_outputs[31:0];
                end
                ADDR_OUTPUTS_DATA_1: begin
                    rdata <= int_outputs[63:32];
                end
                ADDR_PARAS_DATA_0: begin
                    rdata <= int_paras[31:0];
                end
                ADDR_PARAS_DATA_1: begin
                    rdata <= int_paras[63:32];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt         = int_interrupt;
assign ap_start          = int_ap_start;
assign task_ap_done      = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready     = ap_ready && !int_auto_restart;
assign auto_restart_done = auto_restart_status && (ap_idle && !int_ap_idle);
assign input_data_addr   = int_input_data_addr;
assign gama_addr         = int_gama_addr;
assign beta_addr         = int_beta_addr;
assign output_data_addr  = int_output_data_addr;
assign rows              = int_rows;
assign cols_log          = int_cols_log;
assign q_value           = int_q_value;
assign shift_value       = int_shift_value;
assign inputs            = int_inputs;
assign outputs           = int_outputs;
assign paras             = int_paras;
// int_interrupt
always @(posedge ACLK) begin
    if (ARESET)
        int_interrupt <= 1'b0;
    else if (ACLK_EN) begin
        if (int_gie && (|int_isr))
            int_interrupt <= 1'b1;
        else
            int_interrupt <= 1'b0;
    end
end

// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_done)
            int_task_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_task_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_input_data_addr[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_data_addr[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_DATA_ADDR_DATA_0)
            int_input_data_addr[31:0] <= (WDATA[31:0] & wmask) | (int_input_data_addr[31:0] & ~wmask);
    end
end

// int_gama_addr[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_gama_addr[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GAMA_ADDR_DATA_0)
            int_gama_addr[31:0] <= (WDATA[31:0] & wmask) | (int_gama_addr[31:0] & ~wmask);
    end
end

// int_beta_addr[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_beta_addr[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BETA_ADDR_DATA_0)
            int_beta_addr[31:0] <= (WDATA[31:0] & wmask) | (int_beta_addr[31:0] & ~wmask);
    end
end

// int_output_data_addr[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_output_data_addr[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OUTPUT_DATA_ADDR_DATA_0)
            int_output_data_addr[31:0] <= (WDATA[31:0] & wmask) | (int_output_data_addr[31:0] & ~wmask);
    end
end

// int_rows[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_rows[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ROWS_DATA_0)
            int_rows[31:0] <= (WDATA[31:0] & wmask) | (int_rows[31:0] & ~wmask);
    end
end

// int_cols_log[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_cols_log[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_COLS_LOG_DATA_0)
            int_cols_log[31:0] <= (WDATA[31:0] & wmask) | (int_cols_log[31:0] & ~wmask);
    end
end

// int_q_value[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_q_value[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_Q_VALUE_DATA_0)
            int_q_value[31:0] <= (WDATA[31:0] & wmask) | (int_q_value[31:0] & ~wmask);
    end
end

// int_shift_value[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_shift_value[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SHIFT_VALUE_DATA_0)
            int_shift_value[31:0] <= (WDATA[31:0] & wmask) | (int_shift_value[31:0] & ~wmask);
    end
end

// int_done
always @(posedge ACLK) begin
    if (ARESET)
        int_done <= 0;
    else if (ACLK_EN) begin
        if (done_ap_vld)
            int_done <= done;
    end
end

// int_done_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_done_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (done_ap_vld)
            int_done_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_DONE_CTRL)
            int_done_ap_vld <= 1'b0; // clear on read
    end
end

// int_inputs[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_inputs[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUTS_DATA_0)
            int_inputs[31:0] <= (WDATA[31:0] & wmask) | (int_inputs[31:0] & ~wmask);
    end
end

// int_inputs[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_inputs[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUTS_DATA_1)
            int_inputs[63:32] <= (WDATA[31:0] & wmask) | (int_inputs[63:32] & ~wmask);
    end
end

// int_outputs[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_outputs[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OUTPUTS_DATA_0)
            int_outputs[31:0] <= (WDATA[31:0] & wmask) | (int_outputs[31:0] & ~wmask);
    end
end

// int_outputs[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_outputs[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OUTPUTS_DATA_1)
            int_outputs[63:32] <= (WDATA[31:0] & wmask) | (int_outputs[63:32] & ~wmask);
    end
end

// int_paras[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_paras[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PARAS_DATA_0)
            int_paras[31:0] <= (WDATA[31:0] & wmask) | (int_paras[31:0] & ~wmask);
    end
end

// int_paras[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_paras[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PARAS_DATA_1)
            int_paras[63:32] <= (WDATA[31:0] & wmask) | (int_paras[63:32] & ~wmask);
    end
end

//synthesis translate_off
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (int_gie & ~int_isr[0] & int_ier[0] & ap_done)
            $display ("// Interrupt Monitor : interrupt for ap_done detected @ \"%0t\"", $time);
        if (int_gie & ~int_isr[1] & int_ier[1] & ap_ready)
            $display ("// Interrupt Monitor : interrupt for ap_ready detected @ \"%0t\"", $time);
    end
end
//synthesis translate_on

//------------------------Memory logic-------------------

endmodule
