-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Tool Version Limit: 2019.12
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity sparse_sparse_addr_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 7;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    input_data_addr1      :out  STD_LOGIC_VECTOR(31 downto 0);
    input_data_addr2      :out  STD_LOGIC_VECTOR(31 downto 0);
    output_data_addr3     :out  STD_LOGIC_VECTOR(31 downto 0);
    am_ROWS               :out  STD_LOGIC_VECTOR(31 downto 0);
    am_COLS               :out  STD_LOGIC_VECTOR(31 downto 0);
    fm_ROWS               :out  STD_LOGIC_VECTOR(31 downto 0);
    fm_COLS               :out  STD_LOGIC_VECTOR(31 downto 0);
    inputs                :out  STD_LOGIC_VECTOR(63 downto 0);
    outputs               :out  STD_LOGIC_VECTOR(63 downto 0);
    quant_shift           :out  STD_LOGIC_VECTOR(31 downto 0);
    quant_mul             :out  STD_LOGIC_VECTOR(31 downto 0);
    sparse_flag           :in   STD_LOGIC_VECTOR(0 downto 0);
    sparse_flag_ap_vld    :in   STD_LOGIC;
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC
);
end entity sparse_sparse_addr_s_axi;

-- ------------------------Address Info-------------------
-- 0x00 : Control signals
--        bit 0  - ap_start (Read/Write/COH)
--        bit 1  - ap_done (Read/COR)
--        bit 2  - ap_idle (Read)
--        bit 3  - ap_ready (Read/COR)
--        bit 7  - auto_restart (Read/Write)
--        bit 9  - interrupt (Read)
--        others - reserved
-- 0x04 : Global Interrupt Enable Register
--        bit 0  - Global Interrupt Enable (Read/Write)
--        others - reserved
-- 0x08 : IP Interrupt Enable Register (Read/Write)
--        bit 0 - enable ap_done interrupt (Read/Write)
--        bit 1 - enable ap_ready interrupt (Read/Write)
--        others - reserved
-- 0x0c : IP Interrupt Status Register (Read/TOW)
--        bit 0 - ap_done (Read/TOW)
--        bit 1 - ap_ready (Read/TOW)
--        others - reserved
-- 0x10 : Data signal of input_data_addr1
--        bit 31~0 - input_data_addr1[31:0] (Read/Write)
-- 0x14 : reserved
-- 0x18 : Data signal of input_data_addr2
--        bit 31~0 - input_data_addr2[31:0] (Read/Write)
-- 0x1c : reserved
-- 0x20 : Data signal of output_data_addr3
--        bit 31~0 - output_data_addr3[31:0] (Read/Write)
-- 0x24 : reserved
-- 0x28 : Data signal of am_ROWS
--        bit 31~0 - am_ROWS[31:0] (Read/Write)
-- 0x2c : reserved
-- 0x30 : Data signal of am_COLS
--        bit 31~0 - am_COLS[31:0] (Read/Write)
-- 0x34 : reserved
-- 0x38 : Data signal of fm_ROWS
--        bit 31~0 - fm_ROWS[31:0] (Read/Write)
-- 0x3c : reserved
-- 0x40 : Data signal of fm_COLS
--        bit 31~0 - fm_COLS[31:0] (Read/Write)
-- 0x44 : reserved
-- 0x48 : Data signal of inputs
--        bit 31~0 - inputs[31:0] (Read/Write)
-- 0x4c : Data signal of inputs
--        bit 31~0 - inputs[63:32] (Read/Write)
-- 0x50 : reserved
-- 0x54 : Data signal of outputs
--        bit 31~0 - outputs[31:0] (Read/Write)
-- 0x58 : Data signal of outputs
--        bit 31~0 - outputs[63:32] (Read/Write)
-- 0x5c : reserved
-- 0x60 : Data signal of quant_shift
--        bit 31~0 - quant_shift[31:0] (Read/Write)
-- 0x64 : reserved
-- 0x68 : Data signal of quant_mul
--        bit 31~0 - quant_mul[31:0] (Read/Write)
-- 0x6c : reserved
-- 0x70 : Data signal of sparse_flag
--        bit 0  - sparse_flag[0] (Read)
--        others - reserved
-- 0x74 : Control signal of sparse_flag
--        bit 0  - sparse_flag_ap_vld (Read/COR)
--        others - reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of sparse_sparse_addr_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL                  : INTEGER := 16#00#;
    constant ADDR_GIE                      : INTEGER := 16#04#;
    constant ADDR_IER                      : INTEGER := 16#08#;
    constant ADDR_ISR                      : INTEGER := 16#0c#;
    constant ADDR_INPUT_DATA_ADDR1_DATA_0  : INTEGER := 16#10#;
    constant ADDR_INPUT_DATA_ADDR1_CTRL    : INTEGER := 16#14#;
    constant ADDR_INPUT_DATA_ADDR2_DATA_0  : INTEGER := 16#18#;
    constant ADDR_INPUT_DATA_ADDR2_CTRL    : INTEGER := 16#1c#;
    constant ADDR_OUTPUT_DATA_ADDR3_DATA_0 : INTEGER := 16#20#;
    constant ADDR_OUTPUT_DATA_ADDR3_CTRL   : INTEGER := 16#24#;
    constant ADDR_AM_ROWS_DATA_0           : INTEGER := 16#28#;
    constant ADDR_AM_ROWS_CTRL             : INTEGER := 16#2c#;
    constant ADDR_AM_COLS_DATA_0           : INTEGER := 16#30#;
    constant ADDR_AM_COLS_CTRL             : INTEGER := 16#34#;
    constant ADDR_FM_ROWS_DATA_0           : INTEGER := 16#38#;
    constant ADDR_FM_ROWS_CTRL             : INTEGER := 16#3c#;
    constant ADDR_FM_COLS_DATA_0           : INTEGER := 16#40#;
    constant ADDR_FM_COLS_CTRL             : INTEGER := 16#44#;
    constant ADDR_INPUTS_DATA_0            : INTEGER := 16#48#;
    constant ADDR_INPUTS_DATA_1            : INTEGER := 16#4c#;
    constant ADDR_INPUTS_CTRL              : INTEGER := 16#50#;
    constant ADDR_OUTPUTS_DATA_0           : INTEGER := 16#54#;
    constant ADDR_OUTPUTS_DATA_1           : INTEGER := 16#58#;
    constant ADDR_OUTPUTS_CTRL             : INTEGER := 16#5c#;
    constant ADDR_QUANT_SHIFT_DATA_0       : INTEGER := 16#60#;
    constant ADDR_QUANT_SHIFT_CTRL         : INTEGER := 16#64#;
    constant ADDR_QUANT_MUL_DATA_0         : INTEGER := 16#68#;
    constant ADDR_QUANT_MUL_CTRL           : INTEGER := 16#6c#;
    constant ADDR_SPARSE_FLAG_DATA_0       : INTEGER := 16#70#;
    constant ADDR_SPARSE_FLAG_CTRL         : INTEGER := 16#74#;
    constant ADDR_BITS         : INTEGER := 7;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC := '0';
    signal int_ap_ready        : STD_LOGIC := '0';
    signal task_ap_ready       : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal task_ap_done        : STD_LOGIC;
    signal int_task_ap_done    : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_interrupt       : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal auto_restart_status : STD_LOGIC := '0';
    signal auto_restart_done   : STD_LOGIC;
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_input_data_addr1 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_input_data_addr2 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_output_data_addr3 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_am_ROWS         : UNSIGNED(31 downto 0) := (others => '0');
    signal int_am_COLS         : UNSIGNED(31 downto 0) := (others => '0');
    signal int_fm_ROWS         : UNSIGNED(31 downto 0) := (others => '0');
    signal int_fm_COLS         : UNSIGNED(31 downto 0) := (others => '0');
    signal int_inputs          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_outputs         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_quant_shift     : UNSIGNED(31 downto 0) := (others => '0');
    signal int_quant_mul       : UNSIGNED(31 downto 0) := (others => '0');
    signal int_sparse_flag_ap_vld : STD_LOGIC;
    signal int_sparse_flag     : UNSIGNED(0 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data(9) <= int_interrupt;
                        rdata_data(7) <= int_auto_restart;
                        rdata_data(3) <= int_ap_ready;
                        rdata_data(2) <= int_ap_idle;
                        rdata_data(1) <= int_task_ap_done;
                        rdata_data(0) <= int_ap_start;
                    when ADDR_GIE =>
                        rdata_data(0) <= int_gie;
                    when ADDR_IER =>
                        rdata_data(1 downto 0) <= int_ier;
                    when ADDR_ISR =>
                        rdata_data(1 downto 0) <= int_isr;
                    when ADDR_INPUT_DATA_ADDR1_DATA_0 =>
                        rdata_data <= RESIZE(int_input_data_addr1(31 downto 0), 32);
                    when ADDR_INPUT_DATA_ADDR2_DATA_0 =>
                        rdata_data <= RESIZE(int_input_data_addr2(31 downto 0), 32);
                    when ADDR_OUTPUT_DATA_ADDR3_DATA_0 =>
                        rdata_data <= RESIZE(int_output_data_addr3(31 downto 0), 32);
                    when ADDR_AM_ROWS_DATA_0 =>
                        rdata_data <= RESIZE(int_am_ROWS(31 downto 0), 32);
                    when ADDR_AM_COLS_DATA_0 =>
                        rdata_data <= RESIZE(int_am_COLS(31 downto 0), 32);
                    when ADDR_FM_ROWS_DATA_0 =>
                        rdata_data <= RESIZE(int_fm_ROWS(31 downto 0), 32);
                    when ADDR_FM_COLS_DATA_0 =>
                        rdata_data <= RESIZE(int_fm_COLS(31 downto 0), 32);
                    when ADDR_INPUTS_DATA_0 =>
                        rdata_data <= RESIZE(int_inputs(31 downto 0), 32);
                    when ADDR_INPUTS_DATA_1 =>
                        rdata_data <= RESIZE(int_inputs(63 downto 32), 32);
                    when ADDR_OUTPUTS_DATA_0 =>
                        rdata_data <= RESIZE(int_outputs(31 downto 0), 32);
                    when ADDR_OUTPUTS_DATA_1 =>
                        rdata_data <= RESIZE(int_outputs(63 downto 32), 32);
                    when ADDR_QUANT_SHIFT_DATA_0 =>
                        rdata_data <= RESIZE(int_quant_shift(31 downto 0), 32);
                    when ADDR_QUANT_MUL_DATA_0 =>
                        rdata_data <= RESIZE(int_quant_mul(31 downto 0), 32);
                    when ADDR_SPARSE_FLAG_DATA_0 =>
                        rdata_data <= RESIZE(int_sparse_flag(0 downto 0), 32);
                    when ADDR_SPARSE_FLAG_CTRL =>
                        rdata_data(0) <= int_sparse_flag_ap_vld;
                    when others =>
                        NULL;
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_interrupt;
    ap_start             <= int_ap_start;
    task_ap_done         <= (ap_done and not auto_restart_status) or auto_restart_done;
    task_ap_ready        <= ap_ready and not int_auto_restart;
    auto_restart_done    <= auto_restart_status and (ap_idle and not int_ap_idle);
    input_data_addr1     <= STD_LOGIC_VECTOR(int_input_data_addr1);
    input_data_addr2     <= STD_LOGIC_VECTOR(int_input_data_addr2);
    output_data_addr3    <= STD_LOGIC_VECTOR(int_output_data_addr3);
    am_ROWS              <= STD_LOGIC_VECTOR(int_am_ROWS);
    am_COLS              <= STD_LOGIC_VECTOR(int_am_COLS);
    fm_ROWS              <= STD_LOGIC_VECTOR(int_fm_ROWS);
    fm_COLS              <= STD_LOGIC_VECTOR(int_fm_COLS);
    inputs               <= STD_LOGIC_VECTOR(int_inputs);
    outputs              <= STD_LOGIC_VECTOR(int_outputs);
    quant_shift          <= STD_LOGIC_VECTOR(int_quant_shift);
    quant_mul            <= STD_LOGIC_VECTOR(int_quant_mul);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_interrupt <= '0';
            elsif (ACLK_EN = '1') then
                if (int_gie = '1' and (int_isr(0) or int_isr(1)) = '1') then
                    int_interrupt <= '1';
                else
                    int_interrupt <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_done <= ap_done;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_task_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_done = '1') then
                    int_task_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_task_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (task_ap_ready = '1') then
                    int_ap_ready <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_ready <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                auto_restart_status <= '0';
            elsif (ACLK_EN = '1') then
                if (int_auto_restart = '1') then
                    auto_restart_status <= '1';
                elsif (ap_idle = '1') then
                    auto_restart_status <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_DATA_ADDR1_DATA_0) then
                    int_input_data_addr1(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_input_data_addr1(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT_DATA_ADDR2_DATA_0) then
                    int_input_data_addr2(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_input_data_addr2(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_OUTPUT_DATA_ADDR3_DATA_0) then
                    int_output_data_addr3(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_output_data_addr3(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AM_ROWS_DATA_0) then
                    int_am_ROWS(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_am_ROWS(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AM_COLS_DATA_0) then
                    int_am_COLS(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_am_COLS(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_FM_ROWS_DATA_0) then
                    int_fm_ROWS(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_fm_ROWS(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_FM_COLS_DATA_0) then
                    int_fm_COLS(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_fm_COLS(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUTS_DATA_0) then
                    int_inputs(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_inputs(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUTS_DATA_1) then
                    int_inputs(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_inputs(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_OUTPUTS_DATA_0) then
                    int_outputs(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_outputs(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_OUTPUTS_DATA_1) then
                    int_outputs(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_outputs(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_QUANT_SHIFT_DATA_0) then
                    int_quant_shift(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_quant_shift(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_QUANT_MUL_DATA_0) then
                    int_quant_mul(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_quant_mul(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_sparse_flag <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (sparse_flag_ap_vld = '1') then
                    int_sparse_flag <= UNSIGNED(sparse_flag);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_sparse_flag_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (sparse_flag_ap_vld = '1') then
                    int_sparse_flag_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_SPARSE_FLAG_CTRL) then
                    int_sparse_flag_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
