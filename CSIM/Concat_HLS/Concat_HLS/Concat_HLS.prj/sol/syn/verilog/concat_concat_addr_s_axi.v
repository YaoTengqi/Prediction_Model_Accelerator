// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module concat_concat_addr_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 7,
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
    output wire [31:0]                   input_data_addr1,
    output wire [31:0]                   input_data_addr2,
    output wire [31:0]                   output_data_addr3,
    output wire [31:0]                   ROWS,
    output wire [31:0]                   COLS,
    output wire [63:0]                   inputs,
    output wire [63:0]                   outputs,
    input  wire [0:0]                    concat_flag,
    input  wire                          concat_flag_ap_vld,
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

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                  = 7'h00,
    ADDR_GIE                      = 7'h04,
    ADDR_IER                      = 7'h08,
    ADDR_ISR                      = 7'h0c,
    ADDR_INPUT_DATA_ADDR1_DATA_0  = 7'h10,
    ADDR_INPUT_DATA_ADDR1_CTRL    = 7'h14,
    ADDR_INPUT_DATA_ADDR2_DATA_0  = 7'h18,
    ADDR_INPUT_DATA_ADDR2_CTRL    = 7'h1c,
    ADDR_OUTPUT_DATA_ADDR3_DATA_0 = 7'h20,
    ADDR_OUTPUT_DATA_ADDR3_CTRL   = 7'h24,
    ADDR_ROWS_DATA_0              = 7'h28,
    ADDR_ROWS_CTRL                = 7'h2c,
    ADDR_COLS_DATA_0              = 7'h30,
    ADDR_COLS_CTRL                = 7'h34,
    ADDR_INPUTS_DATA_0            = 7'h38,
    ADDR_INPUTS_DATA_1            = 7'h3c,
    ADDR_INPUTS_CTRL              = 7'h40,
    ADDR_OUTPUTS_DATA_0           = 7'h44,
    ADDR_OUTPUTS_DATA_1           = 7'h48,
    ADDR_OUTPUTS_CTRL             = 7'h4c,
    ADDR_CONCAT_FLAG_DATA_0       = 7'h50,
    ADDR_CONCAT_FLAG_CTRL         = 7'h54,
    WRIDLE                        = 2'd0,
    WRDATA                        = 2'd1,
    WRRESP                        = 2'd2,
    WRRESET                       = 2'd3,
    RDIDLE                        = 2'd0,
    RDDATA                        = 2'd1,
    RDRESET                       = 2'd2,
    ADDR_BITS                = 7;

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
    reg  [31:0]                   int_input_data_addr1 = 'b0;
    reg  [31:0]                   int_input_data_addr2 = 'b0;
    reg  [31:0]                   int_output_data_addr3 = 'b0;
    reg  [31:0]                   int_ROWS = 'b0;
    reg  [31:0]                   int_COLS = 'b0;
    reg  [63:0]                   int_inputs = 'b0;
    reg  [63:0]                   int_outputs = 'b0;
    reg                           int_concat_flag_ap_vld;
    reg  [0:0]                    int_concat_flag = 'b0;

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
                ADDR_INPUT_DATA_ADDR1_DATA_0: begin
                    rdata <= int_input_data_addr1[31:0];
                end
                ADDR_INPUT_DATA_ADDR2_DATA_0: begin
                    rdata <= int_input_data_addr2[31:0];
                end
                ADDR_OUTPUT_DATA_ADDR3_DATA_0: begin
                    rdata <= int_output_data_addr3[31:0];
                end
                ADDR_ROWS_DATA_0: begin
                    rdata <= int_ROWS[31:0];
                end
                ADDR_COLS_DATA_0: begin
                    rdata <= int_COLS[31:0];
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
                ADDR_CONCAT_FLAG_DATA_0: begin
                    rdata <= int_concat_flag[0:0];
                end
                ADDR_CONCAT_FLAG_CTRL: begin
                    rdata[0] <= int_concat_flag_ap_vld;
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
assign input_data_addr1  = int_input_data_addr1;
assign input_data_addr2  = int_input_data_addr2;
assign output_data_addr3 = int_output_data_addr3;
assign ROWS              = int_ROWS;
assign COLS              = int_COLS;
assign inputs            = int_inputs;
assign outputs           = int_outputs;
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

// int_input_data_addr1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_data_addr1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_DATA_ADDR1_DATA_0)
            int_input_data_addr1[31:0] <= (WDATA[31:0] & wmask) | (int_input_data_addr1[31:0] & ~wmask);
    end
end

// int_input_data_addr2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_data_addr2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_DATA_ADDR2_DATA_0)
            int_input_data_addr2[31:0] <= (WDATA[31:0] & wmask) | (int_input_data_addr2[31:0] & ~wmask);
    end
end

// int_output_data_addr3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_output_data_addr3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OUTPUT_DATA_ADDR3_DATA_0)
            int_output_data_addr3[31:0] <= (WDATA[31:0] & wmask) | (int_output_data_addr3[31:0] & ~wmask);
    end
end

// int_ROWS[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ROWS[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ROWS_DATA_0)
            int_ROWS[31:0] <= (WDATA[31:0] & wmask) | (int_ROWS[31:0] & ~wmask);
    end
end

// int_COLS[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_COLS[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_COLS_DATA_0)
            int_COLS[31:0] <= (WDATA[31:0] & wmask) | (int_COLS[31:0] & ~wmask);
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

// int_concat_flag
always @(posedge ACLK) begin
    if (ARESET)
        int_concat_flag <= 0;
    else if (ACLK_EN) begin
        if (concat_flag_ap_vld)
            int_concat_flag <= concat_flag;
    end
end

// int_concat_flag_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_concat_flag_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (concat_flag_ap_vld)
            int_concat_flag_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_CONCAT_FLAG_CTRL)
            int_concat_flag_ap_vld <= 1'b0; // clear on read
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
