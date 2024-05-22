-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity concat_read_inputs_ap_uint_256_ap_int_8_32u_Pipeline_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_concat_data_AWVALID : OUT STD_LOGIC;
    m_axi_concat_data_AWREADY : IN STD_LOGIC;
    m_axi_concat_data_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_concat_data_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_concat_data_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_concat_data_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_concat_data_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_concat_data_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_concat_data_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_concat_data_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_concat_data_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_concat_data_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_concat_data_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_concat_data_WVALID : OUT STD_LOGIC;
    m_axi_concat_data_WREADY : IN STD_LOGIC;
    m_axi_concat_data_WDATA : OUT STD_LOGIC_VECTOR (255 downto 0);
    m_axi_concat_data_WSTRB : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_concat_data_WLAST : OUT STD_LOGIC;
    m_axi_concat_data_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_concat_data_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_concat_data_ARVALID : OUT STD_LOGIC;
    m_axi_concat_data_ARREADY : IN STD_LOGIC;
    m_axi_concat_data_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_concat_data_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_concat_data_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_concat_data_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_concat_data_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_concat_data_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_concat_data_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_concat_data_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_concat_data_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_concat_data_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_concat_data_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_concat_data_RVALID : IN STD_LOGIC;
    m_axi_concat_data_RREADY : OUT STD_LOGIC;
    m_axi_concat_data_RDATA : IN STD_LOGIC_VECTOR (255 downto 0);
    m_axi_concat_data_RLAST : IN STD_LOGIC;
    m_axi_concat_data_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_concat_data_RFIFONUM : IN STD_LOGIC_VECTOR (8 downto 0);
    m_axi_concat_data_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_concat_data_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_concat_data_BVALID : IN STD_LOGIC;
    m_axi_concat_data_BREADY : OUT STD_LOGIC;
    m_axi_concat_data_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_concat_data_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_concat_data_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    p_cast2_cast : IN STD_LOGIC_VECTOR (58 downto 0);
    p_cast_cast : IN STD_LOGIC_VECTOR (58 downto 0);
    output_addr : IN STD_LOGIC_VECTOR (26 downto 0) );
end;


architecture behav of concat_read_inputs_ap_uint_256_ap_int_8_32u_Pipeline_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv27_0 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000000000";
    constant ap_const_lv27_1 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000000001";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal exitcond5_fu_116_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal concat_data_blk_n_W : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal concat_data_blk_n_R : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal concat_data_addr_3_read_reg_145 : STD_LOGIC_VECTOR (255 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal loop_index3_fu_52 : STD_LOGIC_VECTOR (26 downto 0);
    signal empty_fu_110_p2 : STD_LOGIC_VECTOR (26 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_loop_index3_load : STD_LOGIC_VECTOR (26 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component concat_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component concat_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_loop_exit_ready_pp0_iter1_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready = ap_const_logic_0))) then 
                    ap_loop_exit_ready_pp0_iter1_reg <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then 
                    ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                end if;
            end if; 
        end if;
    end process;

    loop_index3_fu_52_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((exitcond5_fu_116_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1))) then 
                    loop_index3_fu_52 <= empty_fu_110_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    loop_index3_fu_52 <= ap_const_lv27_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                concat_data_addr_3_read_reg_145 <= m_axi_concat_data_RDATA;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(m_axi_concat_data_RVALID, ap_start_int)
    begin
                ap_block_pp0_stage0_01001 <= ((m_axi_concat_data_RVALID = ap_const_logic_0) and (ap_start_int = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_concat_data_WREADY, m_axi_concat_data_RVALID, ap_start_int)
    begin
                ap_block_pp0_stage0_11001 <= (((m_axi_concat_data_WREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((m_axi_concat_data_RVALID = ap_const_logic_0) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_concat_data_WREADY, m_axi_concat_data_RVALID, ap_start_int)
    begin
                ap_block_pp0_stage0_subdone <= (((m_axi_concat_data_WREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((m_axi_concat_data_RVALID = ap_const_logic_0) and (ap_start_int = ap_const_logic_1)));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(m_axi_concat_data_RVALID)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (m_axi_concat_data_RVALID = ap_const_logic_0);
    end process;

        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, exitcond5_fu_116_p2, ap_start_int)
    begin
        if (((exitcond5_fu_116_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_loop_index3_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, loop_index3_fu_52, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_loop_index3_load <= ap_const_lv27_0;
        else 
            ap_sig_allocacmp_loop_index3_load <= loop_index3_fu_52;
        end if; 
    end process;


    concat_data_blk_n_R_assign_proc : process(ap_CS_fsm_pp0_stage0, m_axi_concat_data_RVALID, ap_block_pp0_stage0, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            concat_data_blk_n_R <= m_axi_concat_data_RVALID;
        else 
            concat_data_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;


    concat_data_blk_n_W_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, m_axi_concat_data_WREADY, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            concat_data_blk_n_W <= m_axi_concat_data_WREADY;
        else 
            concat_data_blk_n_W <= ap_const_logic_1;
        end if; 
    end process;

    empty_fu_110_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_loop_index3_load) + unsigned(ap_const_lv27_1));
    exitcond5_fu_116_p2 <= "1" when (empty_fu_110_p2 = output_addr) else "0";
    m_axi_concat_data_ARADDR <= ap_const_lv64_0;
    m_axi_concat_data_ARBURST <= ap_const_lv2_0;
    m_axi_concat_data_ARCACHE <= ap_const_lv4_0;
    m_axi_concat_data_ARID <= ap_const_lv1_0;
    m_axi_concat_data_ARLEN <= ap_const_lv32_0;
    m_axi_concat_data_ARLOCK <= ap_const_lv2_0;
    m_axi_concat_data_ARPROT <= ap_const_lv3_0;
    m_axi_concat_data_ARQOS <= ap_const_lv4_0;
    m_axi_concat_data_ARREGION <= ap_const_lv4_0;
    m_axi_concat_data_ARSIZE <= ap_const_lv3_0;
    m_axi_concat_data_ARUSER <= ap_const_lv1_0;
    m_axi_concat_data_ARVALID <= ap_const_logic_0;
    m_axi_concat_data_AWADDR <= ap_const_lv64_0;
    m_axi_concat_data_AWBURST <= ap_const_lv2_0;
    m_axi_concat_data_AWCACHE <= ap_const_lv4_0;
    m_axi_concat_data_AWID <= ap_const_lv1_0;
    m_axi_concat_data_AWLEN <= ap_const_lv32_0;
    m_axi_concat_data_AWLOCK <= ap_const_lv2_0;
    m_axi_concat_data_AWPROT <= ap_const_lv3_0;
    m_axi_concat_data_AWQOS <= ap_const_lv4_0;
    m_axi_concat_data_AWREGION <= ap_const_lv4_0;
    m_axi_concat_data_AWSIZE <= ap_const_lv3_0;
    m_axi_concat_data_AWUSER <= ap_const_lv1_0;
    m_axi_concat_data_AWVALID <= ap_const_logic_0;
    m_axi_concat_data_BREADY <= ap_const_logic_0;

    m_axi_concat_data_RREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_start_int)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            m_axi_concat_data_RREADY <= ap_const_logic_1;
        else 
            m_axi_concat_data_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_concat_data_WDATA <= concat_data_addr_3_read_reg_145;
    m_axi_concat_data_WID <= ap_const_lv1_0;
    m_axi_concat_data_WLAST <= ap_const_logic_0;
    m_axi_concat_data_WSTRB <= ap_const_lv32_FFFFFFFF;
    m_axi_concat_data_WUSER <= ap_const_lv1_0;

    m_axi_concat_data_WVALID_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            m_axi_concat_data_WVALID <= ap_const_logic_1;
        else 
            m_axi_concat_data_WVALID <= ap_const_logic_0;
        end if; 
    end process;

end behav;
