-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Tool Version Limit: 2019.12
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity layernorm_ln_addr_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 8;
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
    input_data_addr       :out  STD_LOGIC_VECTOR(31 downto 0);
    gama_addr             :out  STD_LOGIC_VECTOR(31 downto 0);
    beta_addr             :out  STD_LOGIC_VECTOR(31 downto 0);
    output_data_addr      :out  STD_LOGIC_VECTOR(31 downto 0);
    rows                  :out  STD_LOGIC_VECTOR(31 downto 0);
    cols_log              :out  STD_LOGIC_VECTOR(31 downto 0);
    q_value               :out  STD_LOGIC_VECTOR(31 downto 0);
    shift_value           :out  STD_LOGIC_VECTOR(31 downto 0);
    done                  :in   STD_LOGIC_VECTOR(31 downto 0);
    done_ap_vld           :in   STD_LOGIC;
    inputs                :out  STD_LOGIC_VECTOR(63 downto 0);
    outputs               :out  STD_LOGIC_VECTOR(63 downto 0);
    paras                 :out  STD_LOGIC_VECTOR(63 downto 0);
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC
);
end entity layernorm_ln_addr_s_axi;

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
-- 0x10 : Data signal of input_data_addr
--        bit 31~0 - input_data_addr[31:0] (Read/Write)
-- 0x14 : reserved
-- 0x18 : Data signal of gama_addr
--        bit 31~0 - gama_addr[31:0] (Read/Write)
-- 0x1c : reserved
-- 0x20 : Data signal of beta_addr
--        bit 31~0 - beta_addr[31:0] (Read/Write)
-- 0x24 : reserved
-- 0x28 : Data signal of output_data_addr
--        bit 31~0 - output_data_addr[31:0] (Read/Write)
-- 0x2c : reserved
-- 0x30 : Data signal of rows
--        bit 31~0 - rows[31:0] (Read/Write)
-- 0x34 : reserved
-- 0x38 : Data signal of cols_log
--        bit 31~0 - cols_log[31:0] (Read/Write)
-- 0x3c : reserved
-- 0x40 : Data signal of q_value
--        bit 31~0 - q_value[31:0] (Read/Write)
-- 0x44 : reserved
-- 0x48 : Data signal of shift_value
--        bit 31~0 - shift_value[31:0] (Read/Write)
-- 0x4c : reserved
-- 0x50 : Data signal of done
--        bit 31~0 - done[31:0] (Read)
-- 0x54 : Control signal of done
--        bit 0  - done_ap_vld (Read/COR)
--        others - reserved
-- 0x60 : Data signal of inputs
--        bit 31~0 - inputs[31:0] (Read/Write)
-- 0x64 : Data signal of inputs
--        bit 31~0 - inputs[63:32] (Read/Write)
-- 0x68 : reserved
-- 0x6c : Data signal of outputs
--        bit 31~0 - outputs[31:0] (Read/Write)
-- 0x70 : Data signal of outputs
--        bit 31~0 - outputs[63:32] (Read/Write)
-- 0x74 : reserved
-- 0x78 : Data signal of paras
--        bit 31~0 - paras[31:0] (Read/Write)
-- 0x7c : Data signal of paras
--        bit 31~0 - paras[63:32] (Read/Write)
-- 0x80 : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of layernorm_ln_addr_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL                 : INTEGER := 16#00#;
    constant ADDR_GIE                     : INTEGER := 16#04#;
    constant ADDR_IER                     : INTEGER := 16#08#;
    constant ADDR_ISR                     : INTEGER := 16#0c#;
    constant ADDR_INPUT_DATA_ADDR_DATA_0  : INTEGER := 16#10#;
    constant ADDR_INPUT_DATA_ADDR_CTRL    : INTEGER := 16#14#;
    constant ADDR_GAMA_ADDR_DATA_0        : INTEGER := 16#18#;
    constant ADDR_GAMA_ADDR_CTRL          : INTEGER := 16#1c#;
    constant ADDR_BETA_ADDR_DATA_0        : INTEGER := 16#20#;
    constant ADDR_BETA_ADDR_CTRL          : INTEGER := 16#24#;
    constant ADDR_OUTPUT_DATA_ADDR_DATA_0 : INTEGER := 16#28#;
    constant ADDR_OUTPUT_DATA_ADDR_CTRL   : INTEGER := 16#2c#;
    constant ADDR_ROWS_DATA_0             : INTEGER := 16#30#;
    constant ADDR_ROWS_CTRL               : INTEGER := 16#34#;
    constant ADDR_COLS_LOG_DATA_0         : INTEGER := 16#38#;
    constant ADDR_COLS_LOG_CTRL           : INTEGER := 16#3c#;
    constant ADDR_Q_VALUE_DATA_0          : INTEGER := 16#40#;
    constant ADDR_Q_VALUE_CTRL            : INTEGER := 16#44#;
    constant ADDR_SHIFT_VALUE_DATA_0      : INTEGER := 16#48#;
    constant ADDR_SHIFT_VALUE_CTRL        : INTEGER := 16#4c#;
    constant ADDR_DONE_DATA_0             : INTEGER := 16#50#;
    constant ADDR_DONE_CTRL               : INTEGER := 16#54#;
    constant ADDR_INPUTS_DATA_0           : INTEGER := 16#60#;
    constant ADDR_INPUTS_DATA_1           : INTEGER := 16#64#;
    constant ADDR_INPUTS_CTRL             : INTEGER := 16#68#;
    constant ADDR_OUTPUTS_DATA_0          : INTEGER := 16#6c#;
    constant ADDR_OUTPUTS_DATA_1          : INTEGER := 16#70#;
    constant ADDR_OUTPUTS_CTRL            : INTEGER := 16#74#;
    constant ADDR_PARAS_DATA_0            : INTEGER := 16#78#;
    constant ADDR_PARAS_DATA_1            : INTEGER := 16#7c#;
    constant ADDR_PARAS_CTRL              : INTEGER := 16#80#;
    constant ADDR_BITS         : INTEGER := 8;

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
    signal int_input_data_addr : UNSIGNED(31 downto 0) := (others => '0');
    signal int_gama_addr       : UNSIGNED(31 downto 0) := (others => '0');
    signal int_beta_addr       : UNSIGNED(31 downto 0) := (others => '0');
    signal int_output_data_addr : UNSIGNED(31 downto 0) := (others => '0');
    signal int_rows            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_cols_log        : UNSIGNED(31 downto 0) := (others => '0');
    signal int_q_value         : UNSIGNED(31 downto 0) := (others => '0');
    signal int_shift_value     : UNSIGNED(31 downto 0) := (others => '0');
    signal int_done_ap_vld     : STD_LOGIC;
    signal int_done            : UNSIGNED(31 downto 0) := (others => '0');
    signal int_inputs          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_outputs         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_paras           : UNSIGNED(63 downto 0) := (others => '0');


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
                    when ADDR_INPUT_DATA_ADDR_DATA_0 =>
                        rdata_data <= RESIZE(int_input_data_addr(31 downto 0), 32);
                    when ADDR_GAMA_ADDR_DATA_0 =>
                        rdata_data <= RESIZE(int_gama_addr(31 downto 0), 32);
                    when ADDR_BETA_ADDR_DATA_0 =>
                        rdata_data <= RESIZE(int_beta_addr(31 downto 0), 32);
                    when ADDR_OUTPUT_DATA_ADDR_DATA_0 =>
                        rdata_data <= RESIZE(int_output_data_addr(31 downto 0), 32);
                    when ADDR_ROWS_DATA_0 =>
                        rdata_data <= RESIZE(int_rows(31 downto 0), 32);
                    when ADDR_COLS_LOG_DATA_0 =>
                        rdata_data <= RESIZE(int_cols_log(31 downto 0), 32);
                    when ADDR_Q_VALUE_DATA_0 =>
                        rdata_data <= RESIZE(int_q_value(31 downto 0), 32);
                    when ADDR_SHIFT_VALUE_DATA_0 =>
                        rdata_data <= RESIZE(int_shift_value(31 downto 0), 32);
                    when ADDR_DONE_DATA_0 =>
                        rdata_data <= RESIZE(int_done(31 downto 0), 32);
                    when ADDR_DONE_CTRL =>
                        rdata_data(0) <= int_done_ap_vld;
                    when ADDR_INPUTS_DATA_0 =>
                        rdata_data <= RESIZE(int_inputs(31 downto 0), 32);
                    when ADDR_INPUTS_DATA_1 =>
                        rdata_data <= RESIZE(int_inputs(63 downto 32), 32);
                    when ADDR_OUTPUTS_DATA_0 =>
                        rdata_data <= RESIZE(int_outputs(31 downto 0), 32);
                    when ADDR_OUTPUTS_DATA_1 =>
                        rdata_data <= RESIZE(int_outputs(63 downto 32), 32);
                    when ADDR_PARAS_DATA_0 =>
                        rdata_data <= RESIZE(int_paras(31 downto 0), 32);
                    when ADDR_PARAS_DATA_1 =>
                        rdata_data <= RESIZE(int_paras(63 downto 32), 32);
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
    input_data_addr      <= STD_LOGIC_VECTOR(int_input_data_addr);
    gama_addr            <= STD_LOGIC_VECTOR(int_gama_addr);
    beta_addr            <= STD_LOGIC_VECTOR(int_beta_addr);
    output_data_addr     <= STD_LOGIC_VECTOR(int_output_data_addr);
    rows                 <= STD_LOGIC_VECTOR(int_rows);
    cols_log             <= STD_LOGIC_VECTOR(int_cols_log);
    q_value              <= STD_LOGIC_VECTOR(int_q_value);
    shift_value          <= STD_LOGIC_VECTOR(int_shift_value);
    inputs               <= STD_LOGIC_VECTOR(int_inputs);
    outputs              <= STD_LOGIC_VECTOR(int_outputs);
    paras                <= STD_LOGIC_VECTOR(int_paras);

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
                if (w_hs = '1' and waddr = ADDR_INPUT_DATA_ADDR_DATA_0) then
                    int_input_data_addr(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_input_data_addr(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GAMA_ADDR_DATA_0) then
                    int_gama_addr(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_gama_addr(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_BETA_ADDR_DATA_0) then
                    int_beta_addr(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_beta_addr(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_OUTPUT_DATA_ADDR_DATA_0) then
                    int_output_data_addr(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_output_data_addr(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_ROWS_DATA_0) then
                    int_rows(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_rows(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_COLS_LOG_DATA_0) then
                    int_cols_log(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_cols_log(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_Q_VALUE_DATA_0) then
                    int_q_value(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_q_value(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SHIFT_VALUE_DATA_0) then
                    int_shift_value(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_shift_value(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_done <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (done_ap_vld = '1') then
                    int_done <= UNSIGNED(done);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_done_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (done_ap_vld = '1') then
                    int_done_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_DONE_CTRL) then
                    int_done_ap_vld <= '0'; -- clear on read
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
                if (w_hs = '1' and waddr = ADDR_PARAS_DATA_0) then
                    int_paras(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_paras(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_PARAS_DATA_1) then
                    int_paras(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_paras(63 downto 32));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
