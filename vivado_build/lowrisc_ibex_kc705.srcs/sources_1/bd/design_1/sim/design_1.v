//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Sun Mar 29 16:34:24 2020
//Host        : fitz-MS-7B00 running 64-bit Ubuntu 18.04.4 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clk_and_rst_imp_1TISILG
   (clk_100MHz,
    clk_20M,
    interconnect_aresetn,
    peripheral_aresetn,
    reset);
  input clk_100MHz;
  output clk_20M;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;
  input reset;

  wire clk_100MHz_1;
  wire clk_wiz_clk_out1;
  wire clk_wiz_locked;
  wire reset_1;
  wire [0:0]rst_clk_wiz_100M_interconnect_aresetn;
  wire [0:0]rst_clk_wiz_100M_peripheral_aresetn;

  assign clk_100MHz_1 = clk_100MHz;
  assign clk_20M = clk_wiz_clk_out1;
  assign interconnect_aresetn[0] = rst_clk_wiz_100M_interconnect_aresetn;
  assign peripheral_aresetn[0] = rst_clk_wiz_100M_peripheral_aresetn;
  assign reset_1 = reset;
  design_1_clk_wiz_0 clk_wiz
       (.clk_in1(clk_100MHz_1),
        .clk_out1(clk_wiz_clk_out1),
        .locked(clk_wiz_locked),
        .resetn(reset_1));
  design_1_rst_clk_wiz_100M_0 rst_clk_wiz_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(reset_1),
        .interconnect_aresetn(rst_clk_wiz_100M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_clk_out1));
endmodule

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=29,numReposBlks=17,numNonXlnxBlks=0,numHierBlks=12,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=29,da_board_cnt=8,da_bram_cntlr_cnt=7,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_100MHz,
    dip_switches_16bits_tri_i,
    led_16bits_tri_o,
    reset,
    usb_uart_rxd,
    usb_uart_txd);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN design_1_clk_100MHz, FREQ_HZ 100000000, PHASE 0.000" *) input clk_100MHz;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 dip_switches_16bits TRI_I" *) input [15:0]dip_switches_16bits_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_16bits TRI_O" *) output [15:0]led_16bits_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart RxD" *) input usb_uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart TxD" *) output usb_uart_txd;

  wire [15:0]axi_gpio_0_GPIO2_TRI_I;
  wire [15:0]axi_gpio_0_GPIO_TRI_O;
  wire axi_gpio_0_ip2intc_irpt;
  wire axi_intc_0_irq;
  wire axi_uartlite_0_UART_RxD;
  wire axi_uartlite_0_UART_TxD;
  wire axi_uartlite_0_interrupt;
  wire clk_100MHz_1;
  wire clk_wiz_clk_out1;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARADDR;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARBURST;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARCACHE;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARID;
  wire [7:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARLEN;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARLOCK;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARPROT;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARQOS;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARREADY;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARREGION;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARSIZE;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARUSER;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWADDR;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWBURST;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWCACHE;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWID;
  wire [7:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWLEN;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWLOCK;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWPROT;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWQOS;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWREADY;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWREGION;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWSIZE;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWUSER;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWVALID;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_BID;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_BREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_BRESP;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_BUSER;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_BVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RDATA;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RID;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RLAST;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RRESP;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RUSER;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_WDATA;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_WLAST;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_WREADY;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_WSTRB;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_WUSER;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_WVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARADDR;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARBURST;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARCACHE;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARID;
  wire [7:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARLEN;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARLOCK;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARPROT;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARREADY;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARSIZE;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWADDR;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWBURST;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWCACHE;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWID;
  wire [7:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWLEN;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWLOCK;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWPROT;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWREADY;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWSIZE;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWVALID;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_BID;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_BREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_BRESP;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_BVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_RDATA;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_RID;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_RLAST;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_RREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_RRESP;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_RVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_WDATA;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_WLAST;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_WREADY;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_WSTRB;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_WVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_ARADDR;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_ARREADY;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_ARVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_AWADDR;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_AWREADY;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_AWVALID;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_BREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_BRESP;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_BVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_RDATA;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_RREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_RRESP;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_RVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_WDATA;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_WREADY;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_WSTRB;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_WVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_ARADDR;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_ARREADY;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_ARVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_AWADDR;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_AWREADY;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_AWVALID;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_BREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_BRESP;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_BVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_RDATA;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_RREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_RRESP;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_RVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_WDATA;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_WREADY;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_WSTRB;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_WVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_ARADDR;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_ARREADY;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_ARVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_AWADDR;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_AWREADY;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_AWVALID;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_BREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_BRESP;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_BVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_RDATA;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_RREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_RRESP;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_RVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_WDATA;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_WREADY;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_WSTRB;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_WVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARADDR;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARBURST;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARCACHE;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARID;
  wire [7:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARLEN;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARLOCK;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARPROT;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARQOS;
  wire ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARREADY;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARREGION;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARSIZE;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARUSER;
  wire ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWADDR;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWBURST;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWCACHE;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWID;
  wire [7:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWLEN;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWLOCK;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWPROT;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWQOS;
  wire ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWREADY;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWREGION;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWSIZE;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWUSER;
  wire ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWVALID;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_BID;
  wire ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_BRESP;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_BUSER;
  wire ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RDATA;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RID;
  wire ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RLAST;
  wire ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RRESP;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RUSER;
  wire ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_WDATA;
  wire ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_WLAST;
  wire ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_WSTRB;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_WUSER;
  wire ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_WVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_data_axi_ARADDR;
  wire [1:0]ibex_core_axi_wallpaper_0_data_axi_ARBURST;
  wire [3:0]ibex_core_axi_wallpaper_0_data_axi_ARCACHE;
  wire [11:0]ibex_core_axi_wallpaper_0_data_axi_ARID;
  wire [7:0]ibex_core_axi_wallpaper_0_data_axi_ARLEN;
  wire [0:0]ibex_core_axi_wallpaper_0_data_axi_ARLOCK;
  wire [2:0]ibex_core_axi_wallpaper_0_data_axi_ARPROT;
  wire [3:0]ibex_core_axi_wallpaper_0_data_axi_ARQOS;
  wire [0:0]ibex_core_axi_wallpaper_0_data_axi_ARREADY;
  wire [2:0]ibex_core_axi_wallpaper_0_data_axi_ARSIZE;
  wire [3:0]ibex_core_axi_wallpaper_0_data_axi_ARUSER;
  wire ibex_core_axi_wallpaper_0_data_axi_ARVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_data_axi_AWADDR;
  wire [1:0]ibex_core_axi_wallpaper_0_data_axi_AWBURST;
  wire [3:0]ibex_core_axi_wallpaper_0_data_axi_AWCACHE;
  wire [11:0]ibex_core_axi_wallpaper_0_data_axi_AWID;
  wire [7:0]ibex_core_axi_wallpaper_0_data_axi_AWLEN;
  wire [0:0]ibex_core_axi_wallpaper_0_data_axi_AWLOCK;
  wire [2:0]ibex_core_axi_wallpaper_0_data_axi_AWPROT;
  wire [3:0]ibex_core_axi_wallpaper_0_data_axi_AWQOS;
  wire [0:0]ibex_core_axi_wallpaper_0_data_axi_AWREADY;
  wire [2:0]ibex_core_axi_wallpaper_0_data_axi_AWSIZE;
  wire [3:0]ibex_core_axi_wallpaper_0_data_axi_AWUSER;
  wire ibex_core_axi_wallpaper_0_data_axi_AWVALID;
  wire [11:0]ibex_core_axi_wallpaper_0_data_axi_BID;
  wire ibex_core_axi_wallpaper_0_data_axi_BREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_data_axi_BRESP;
  wire [3:0]ibex_core_axi_wallpaper_0_data_axi_BUSER;
  wire [0:0]ibex_core_axi_wallpaper_0_data_axi_BVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_data_axi_RDATA;
  wire [11:0]ibex_core_axi_wallpaper_0_data_axi_RID;
  wire [0:0]ibex_core_axi_wallpaper_0_data_axi_RLAST;
  wire ibex_core_axi_wallpaper_0_data_axi_RREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_data_axi_RRESP;
  wire [3:0]ibex_core_axi_wallpaper_0_data_axi_RUSER;
  wire [0:0]ibex_core_axi_wallpaper_0_data_axi_RVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_data_axi_WDATA;
  wire ibex_core_axi_wallpaper_0_data_axi_WLAST;
  wire [0:0]ibex_core_axi_wallpaper_0_data_axi_WREADY;
  wire [3:0]ibex_core_axi_wallpaper_0_data_axi_WSTRB;
  wire [3:0]ibex_core_axi_wallpaper_0_data_axi_WUSER;
  wire ibex_core_axi_wallpaper_0_data_axi_WVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_instr_axi_ARADDR;
  wire [1:0]ibex_core_axi_wallpaper_0_instr_axi_ARBURST;
  wire [3:0]ibex_core_axi_wallpaper_0_instr_axi_ARCACHE;
  wire [11:0]ibex_core_axi_wallpaper_0_instr_axi_ARID;
  wire [7:0]ibex_core_axi_wallpaper_0_instr_axi_ARLEN;
  wire [0:0]ibex_core_axi_wallpaper_0_instr_axi_ARLOCK;
  wire [2:0]ibex_core_axi_wallpaper_0_instr_axi_ARPROT;
  wire [3:0]ibex_core_axi_wallpaper_0_instr_axi_ARQOS;
  wire ibex_core_axi_wallpaper_0_instr_axi_ARREADY;
  wire [3:0]ibex_core_axi_wallpaper_0_instr_axi_ARREGION;
  wire [2:0]ibex_core_axi_wallpaper_0_instr_axi_ARSIZE;
  wire [3:0]ibex_core_axi_wallpaper_0_instr_axi_ARUSER;
  wire ibex_core_axi_wallpaper_0_instr_axi_ARVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_instr_axi_AWADDR;
  wire [1:0]ibex_core_axi_wallpaper_0_instr_axi_AWBURST;
  wire [3:0]ibex_core_axi_wallpaper_0_instr_axi_AWCACHE;
  wire [11:0]ibex_core_axi_wallpaper_0_instr_axi_AWID;
  wire [7:0]ibex_core_axi_wallpaper_0_instr_axi_AWLEN;
  wire [0:0]ibex_core_axi_wallpaper_0_instr_axi_AWLOCK;
  wire [2:0]ibex_core_axi_wallpaper_0_instr_axi_AWPROT;
  wire [3:0]ibex_core_axi_wallpaper_0_instr_axi_AWQOS;
  wire ibex_core_axi_wallpaper_0_instr_axi_AWREADY;
  wire [3:0]ibex_core_axi_wallpaper_0_instr_axi_AWREGION;
  wire [2:0]ibex_core_axi_wallpaper_0_instr_axi_AWSIZE;
  wire [3:0]ibex_core_axi_wallpaper_0_instr_axi_AWUSER;
  wire ibex_core_axi_wallpaper_0_instr_axi_AWVALID;
  wire [11:0]ibex_core_axi_wallpaper_0_instr_axi_BID;
  wire ibex_core_axi_wallpaper_0_instr_axi_BREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_instr_axi_BRESP;
  wire [3:0]ibex_core_axi_wallpaper_0_instr_axi_BUSER;
  wire ibex_core_axi_wallpaper_0_instr_axi_BVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_instr_axi_RDATA;
  wire [11:0]ibex_core_axi_wallpaper_0_instr_axi_RID;
  wire ibex_core_axi_wallpaper_0_instr_axi_RLAST;
  wire ibex_core_axi_wallpaper_0_instr_axi_RREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_instr_axi_RRESP;
  wire [3:0]ibex_core_axi_wallpaper_0_instr_axi_RUSER;
  wire ibex_core_axi_wallpaper_0_instr_axi_RVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_instr_axi_WDATA;
  wire ibex_core_axi_wallpaper_0_instr_axi_WLAST;
  wire ibex_core_axi_wallpaper_0_instr_axi_WREADY;
  wire [3:0]ibex_core_axi_wallpaper_0_instr_axi_WSTRB;
  wire [3:0]ibex_core_axi_wallpaper_0_instr_axi_WUSER;
  wire ibex_core_axi_wallpaper_0_instr_axi_WVALID;
  wire reset_1;
  wire [0:0]rst_clk_wiz_100M_interconnect_aresetn;
  wire [0:0]rst_clk_wiz_100M_peripheral_aresetn;
  wire [0:0]vcc_dout;
  wire [1:0]xlconcat_0_dout;
  wire [14:0]xlconstant_0_dout;

  assign axi_gpio_0_GPIO2_TRI_I = dip_switches_16bits_tri_i[15:0];
  assign axi_uartlite_0_UART_RxD = usb_uart_rxd;
  assign clk_100MHz_1 = clk_100MHz;
  assign led_16bits_tri_o[15:0] = axi_gpio_0_GPIO_TRI_O;
  assign reset_1 = reset;
  assign usb_uart_txd = axi_uartlite_0_UART_TxD;
  design_1_xlconstant_0_1 GND
       (.dout(xlconstant_0_dout));
  design_1_axi_gpio_0_1 axi_gpio_0
       (.gpio2_io_i(axi_gpio_0_GPIO2_TRI_I),
        .gpio_io_o(axi_gpio_0_GPIO_TRI_O),
        .ip2intc_irpt(axi_gpio_0_ip2intc_irpt),
        .s_axi_aclk(clk_wiz_clk_out1),
        .s_axi_araddr(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .s_axi_arready(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_ARREADY),
        .s_axi_arvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_ARVALID),
        .s_axi_awaddr(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_AWADDR[8:0]),
        .s_axi_awready(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_AWREADY),
        .s_axi_awvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_AWVALID),
        .s_axi_bready(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_BREADY),
        .s_axi_bresp(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_BRESP),
        .s_axi_bvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_BVALID),
        .s_axi_rdata(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_RDATA),
        .s_axi_rready(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_RREADY),
        .s_axi_rresp(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_RRESP),
        .s_axi_rvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_RVALID),
        .s_axi_wdata(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_WDATA),
        .s_axi_wready(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_WREADY),
        .s_axi_wstrb(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_WSTRB),
        .s_axi_wvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_WVALID));
  design_1_axi_intc_0_0 axi_intc_0
       (.intr(xlconcat_0_dout),
        .irq(axi_intc_0_irq),
        .s_axi_aclk(clk_wiz_clk_out1),
        .s_axi_araddr(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .s_axi_arready(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_ARREADY),
        .s_axi_arvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_ARVALID),
        .s_axi_awaddr(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_AWADDR[8:0]),
        .s_axi_awready(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_AWREADY),
        .s_axi_awvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_AWVALID),
        .s_axi_bready(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_BREADY),
        .s_axi_bresp(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_BRESP),
        .s_axi_bvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_BVALID),
        .s_axi_rdata(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_RDATA),
        .s_axi_rready(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_RREADY),
        .s_axi_rresp(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_RRESP),
        .s_axi_rvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_RVALID),
        .s_axi_wdata(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_WDATA),
        .s_axi_wready(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_WREADY),
        .s_axi_wstrb(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_WSTRB),
        .s_axi_wvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_WVALID));
  design_1_axi_uartlite_0_1 axi_uartlite_0
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(axi_uartlite_0_UART_RxD),
        .s_axi_aclk(clk_wiz_clk_out1),
        .s_axi_araddr(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_ARADDR[3:0]),
        .s_axi_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .s_axi_arready(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_ARREADY),
        .s_axi_arvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_ARVALID),
        .s_axi_awaddr(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_AWADDR[3:0]),
        .s_axi_awready(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_AWREADY),
        .s_axi_awvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_AWVALID),
        .s_axi_bready(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_BREADY),
        .s_axi_bresp(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_BRESP),
        .s_axi_bvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_BVALID),
        .s_axi_rdata(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_RDATA),
        .s_axi_rready(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_RREADY),
        .s_axi_rresp(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_RRESP),
        .s_axi_rvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_RVALID),
        .s_axi_wdata(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_WDATA),
        .s_axi_wready(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_WREADY),
        .s_axi_wstrb(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_WSTRB),
        .s_axi_wvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_WVALID),
        .tx(axi_uartlite_0_UART_TxD));
  clk_and_rst_imp_1TISILG clk_and_rst
       (.clk_100MHz(clk_100MHz_1),
        .clk_20M(clk_wiz_clk_out1),
        .interconnect_aresetn(rst_clk_wiz_100M_interconnect_aresetn),
        .peripheral_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .reset(reset_1));
  dtcm_imp_WP3ICL dtcm
       (.S_AXI_araddr(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARADDR),
        .S_AXI_arburst(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARBURST),
        .S_AXI_arcache(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARCACHE),
        .S_AXI_arid(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARID),
        .S_AXI_arlen(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARLEN),
        .S_AXI_arlock(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARLOCK),
        .S_AXI_arprot(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARPROT),
        .S_AXI_arready(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARREADY),
        .S_AXI_arsize(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARSIZE),
        .S_AXI_arvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARVALID),
        .S_AXI_awaddr(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWADDR),
        .S_AXI_awburst(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWBURST),
        .S_AXI_awcache(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWCACHE),
        .S_AXI_awid(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWID),
        .S_AXI_awlen(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWLEN),
        .S_AXI_awlock(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWLOCK),
        .S_AXI_awprot(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWPROT),
        .S_AXI_awready(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWREADY),
        .S_AXI_awsize(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWSIZE),
        .S_AXI_awvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWVALID),
        .S_AXI_bid(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_BID),
        .S_AXI_bready(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_BREADY),
        .S_AXI_bresp(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_BRESP),
        .S_AXI_bvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_BVALID),
        .S_AXI_rdata(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_RDATA),
        .S_AXI_rid(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_RID),
        .S_AXI_rlast(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_RLAST),
        .S_AXI_rready(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_RREADY),
        .S_AXI_rresp(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_RRESP),
        .S_AXI_rvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_RVALID),
        .S_AXI_wdata(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_WDATA),
        .S_AXI_wlast(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_WLAST),
        .S_AXI_wready(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_WREADY),
        .S_AXI_wstrb(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_WSTRB),
        .S_AXI_wvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_WVALID),
        .s_axi_aclk(clk_wiz_clk_out1),
        .s_axi_aresetn(rst_clk_wiz_100M_peripheral_aresetn));
  design_1_ibex_core_axi_wallpaper_0_0 ibex_core_axi_wallpaper_0
       (.axi_aclk(clk_wiz_clk_out1),
        .axi_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .data_axi_araddr(ibex_core_axi_wallpaper_0_data_axi_ARADDR),
        .data_axi_arburst(ibex_core_axi_wallpaper_0_data_axi_ARBURST),
        .data_axi_arcache(ibex_core_axi_wallpaper_0_data_axi_ARCACHE),
        .data_axi_arid(ibex_core_axi_wallpaper_0_data_axi_ARID),
        .data_axi_arlen(ibex_core_axi_wallpaper_0_data_axi_ARLEN),
        .data_axi_arlock(ibex_core_axi_wallpaper_0_data_axi_ARLOCK),
        .data_axi_arprot(ibex_core_axi_wallpaper_0_data_axi_ARPROT),
        .data_axi_arqos(ibex_core_axi_wallpaper_0_data_axi_ARQOS),
        .data_axi_arready(ibex_core_axi_wallpaper_0_data_axi_ARREADY),
        .data_axi_arsize(ibex_core_axi_wallpaper_0_data_axi_ARSIZE),
        .data_axi_aruser(ibex_core_axi_wallpaper_0_data_axi_ARUSER),
        .data_axi_arvalid(ibex_core_axi_wallpaper_0_data_axi_ARVALID),
        .data_axi_awaddr(ibex_core_axi_wallpaper_0_data_axi_AWADDR),
        .data_axi_awburst(ibex_core_axi_wallpaper_0_data_axi_AWBURST),
        .data_axi_awcache(ibex_core_axi_wallpaper_0_data_axi_AWCACHE),
        .data_axi_awid(ibex_core_axi_wallpaper_0_data_axi_AWID),
        .data_axi_awlen(ibex_core_axi_wallpaper_0_data_axi_AWLEN),
        .data_axi_awlock(ibex_core_axi_wallpaper_0_data_axi_AWLOCK),
        .data_axi_awprot(ibex_core_axi_wallpaper_0_data_axi_AWPROT),
        .data_axi_awqos(ibex_core_axi_wallpaper_0_data_axi_AWQOS),
        .data_axi_awready(ibex_core_axi_wallpaper_0_data_axi_AWREADY),
        .data_axi_awsize(ibex_core_axi_wallpaper_0_data_axi_AWSIZE),
        .data_axi_awuser(ibex_core_axi_wallpaper_0_data_axi_AWUSER),
        .data_axi_awvalid(ibex_core_axi_wallpaper_0_data_axi_AWVALID),
        .data_axi_bid(ibex_core_axi_wallpaper_0_data_axi_BID),
        .data_axi_bready(ibex_core_axi_wallpaper_0_data_axi_BREADY),
        .data_axi_bresp(ibex_core_axi_wallpaper_0_data_axi_BRESP),
        .data_axi_buser(ibex_core_axi_wallpaper_0_data_axi_BUSER),
        .data_axi_bvalid(ibex_core_axi_wallpaper_0_data_axi_BVALID),
        .data_axi_rdata(ibex_core_axi_wallpaper_0_data_axi_RDATA),
        .data_axi_rid(ibex_core_axi_wallpaper_0_data_axi_RID),
        .data_axi_rlast(ibex_core_axi_wallpaper_0_data_axi_RLAST),
        .data_axi_rready(ibex_core_axi_wallpaper_0_data_axi_RREADY),
        .data_axi_rresp(ibex_core_axi_wallpaper_0_data_axi_RRESP),
        .data_axi_ruser(ibex_core_axi_wallpaper_0_data_axi_RUSER),
        .data_axi_rvalid(ibex_core_axi_wallpaper_0_data_axi_RVALID),
        .data_axi_wdata(ibex_core_axi_wallpaper_0_data_axi_WDATA),
        .data_axi_wlast(ibex_core_axi_wallpaper_0_data_axi_WLAST),
        .data_axi_wready(ibex_core_axi_wallpaper_0_data_axi_WREADY),
        .data_axi_wstrb(ibex_core_axi_wallpaper_0_data_axi_WSTRB),
        .data_axi_wuser(ibex_core_axi_wallpaper_0_data_axi_WUSER),
        .data_axi_wvalid(ibex_core_axi_wallpaper_0_data_axi_WVALID),
        .debug_req_i(xlconstant_0_dout[0]),
        .fetch_enable_i(vcc_dout),
        .instr_axi_araddr(ibex_core_axi_wallpaper_0_instr_axi_ARADDR),
        .instr_axi_arburst(ibex_core_axi_wallpaper_0_instr_axi_ARBURST),
        .instr_axi_arcache(ibex_core_axi_wallpaper_0_instr_axi_ARCACHE),
        .instr_axi_arid(ibex_core_axi_wallpaper_0_instr_axi_ARID),
        .instr_axi_arlen(ibex_core_axi_wallpaper_0_instr_axi_ARLEN),
        .instr_axi_arlock(ibex_core_axi_wallpaper_0_instr_axi_ARLOCK),
        .instr_axi_arprot(ibex_core_axi_wallpaper_0_instr_axi_ARPROT),
        .instr_axi_arqos(ibex_core_axi_wallpaper_0_instr_axi_ARQOS),
        .instr_axi_arready(ibex_core_axi_wallpaper_0_instr_axi_ARREADY),
        .instr_axi_arregion(ibex_core_axi_wallpaper_0_instr_axi_ARREGION),
        .instr_axi_arsize(ibex_core_axi_wallpaper_0_instr_axi_ARSIZE),
        .instr_axi_aruser(ibex_core_axi_wallpaper_0_instr_axi_ARUSER),
        .instr_axi_arvalid(ibex_core_axi_wallpaper_0_instr_axi_ARVALID),
        .instr_axi_awaddr(ibex_core_axi_wallpaper_0_instr_axi_AWADDR),
        .instr_axi_awburst(ibex_core_axi_wallpaper_0_instr_axi_AWBURST),
        .instr_axi_awcache(ibex_core_axi_wallpaper_0_instr_axi_AWCACHE),
        .instr_axi_awid(ibex_core_axi_wallpaper_0_instr_axi_AWID),
        .instr_axi_awlen(ibex_core_axi_wallpaper_0_instr_axi_AWLEN),
        .instr_axi_awlock(ibex_core_axi_wallpaper_0_instr_axi_AWLOCK),
        .instr_axi_awprot(ibex_core_axi_wallpaper_0_instr_axi_AWPROT),
        .instr_axi_awqos(ibex_core_axi_wallpaper_0_instr_axi_AWQOS),
        .instr_axi_awready(ibex_core_axi_wallpaper_0_instr_axi_AWREADY),
        .instr_axi_awregion(ibex_core_axi_wallpaper_0_instr_axi_AWREGION),
        .instr_axi_awsize(ibex_core_axi_wallpaper_0_instr_axi_AWSIZE),
        .instr_axi_awuser(ibex_core_axi_wallpaper_0_instr_axi_AWUSER),
        .instr_axi_awvalid(ibex_core_axi_wallpaper_0_instr_axi_AWVALID),
        .instr_axi_bid(ibex_core_axi_wallpaper_0_instr_axi_BID),
        .instr_axi_bready(ibex_core_axi_wallpaper_0_instr_axi_BREADY),
        .instr_axi_bresp(ibex_core_axi_wallpaper_0_instr_axi_BRESP),
        .instr_axi_buser(ibex_core_axi_wallpaper_0_instr_axi_BUSER),
        .instr_axi_bvalid(ibex_core_axi_wallpaper_0_instr_axi_BVALID),
        .instr_axi_rdata(ibex_core_axi_wallpaper_0_instr_axi_RDATA),
        .instr_axi_rid(ibex_core_axi_wallpaper_0_instr_axi_RID),
        .instr_axi_rlast(ibex_core_axi_wallpaper_0_instr_axi_RLAST),
        .instr_axi_rready(ibex_core_axi_wallpaper_0_instr_axi_RREADY),
        .instr_axi_rresp(ibex_core_axi_wallpaper_0_instr_axi_RRESP),
        .instr_axi_ruser(ibex_core_axi_wallpaper_0_instr_axi_RUSER),
        .instr_axi_rvalid(ibex_core_axi_wallpaper_0_instr_axi_RVALID),
        .instr_axi_wdata(ibex_core_axi_wallpaper_0_instr_axi_WDATA),
        .instr_axi_wlast(ibex_core_axi_wallpaper_0_instr_axi_WLAST),
        .instr_axi_wready(ibex_core_axi_wallpaper_0_instr_axi_WREADY),
        .instr_axi_wstrb(ibex_core_axi_wallpaper_0_instr_axi_WSTRB),
        .instr_axi_wuser(ibex_core_axi_wallpaper_0_instr_axi_WUSER),
        .instr_axi_wvalid(ibex_core_axi_wallpaper_0_instr_axi_WVALID),
        .irq_external_i(axi_intc_0_irq),
        .irq_fast_i(xlconstant_0_dout),
        .irq_nm_i(xlconstant_0_dout[0]),
        .irq_software_i(xlconstant_0_dout[0]),
        .irq_timer_i(xlconstant_0_dout[0]));
  design_1_ibex_core_axi_wallpaper_0_axi_periph_0 ibex_core_axi_wallpaper_0_axi_periph
       (.ACLK(clk_wiz_clk_out1),
        .ARESETN(rst_clk_wiz_100M_interconnect_aresetn),
        .M00_ACLK(clk_wiz_clk_out1),
        .M00_ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .M00_AXI_araddr(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arburst(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARBURST),
        .M00_AXI_arcache(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARCACHE),
        .M00_AXI_arid(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARID),
        .M00_AXI_arlen(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARLEN),
        .M00_AXI_arlock(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARLOCK),
        .M00_AXI_arprot(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARPROT),
        .M00_AXI_arqos(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARQOS),
        .M00_AXI_arready(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arregion(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARREGION),
        .M00_AXI_arsize(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARSIZE),
        .M00_AXI_aruser(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARUSER),
        .M00_AXI_arvalid(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awburst(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWBURST),
        .M00_AXI_awcache(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWCACHE),
        .M00_AXI_awid(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWID),
        .M00_AXI_awlen(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWLEN),
        .M00_AXI_awlock(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWLOCK),
        .M00_AXI_awprot(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWPROT),
        .M00_AXI_awqos(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWQOS),
        .M00_AXI_awready(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awregion(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWREGION),
        .M00_AXI_awsize(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWSIZE),
        .M00_AXI_awuser(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWUSER),
        .M00_AXI_awvalid(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bid(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_BID),
        .M00_AXI_bready(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_buser(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_BUSER),
        .M00_AXI_bvalid(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rid(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RID),
        .M00_AXI_rlast(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RLAST),
        .M00_AXI_rready(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_ruser(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RUSER),
        .M00_AXI_rvalid(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wlast(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_WLAST),
        .M00_AXI_wready(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wuser(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_WUSER),
        .M00_AXI_wvalid(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_WVALID),
        .S00_ACLK(clk_wiz_clk_out1),
        .S00_ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .S00_AXI_araddr(ibex_core_axi_wallpaper_0_instr_axi_ARADDR),
        .S00_AXI_arburst(ibex_core_axi_wallpaper_0_instr_axi_ARBURST),
        .S00_AXI_arcache(ibex_core_axi_wallpaper_0_instr_axi_ARCACHE),
        .S00_AXI_arid(ibex_core_axi_wallpaper_0_instr_axi_ARID),
        .S00_AXI_arlen(ibex_core_axi_wallpaper_0_instr_axi_ARLEN),
        .S00_AXI_arlock(ibex_core_axi_wallpaper_0_instr_axi_ARLOCK),
        .S00_AXI_arprot(ibex_core_axi_wallpaper_0_instr_axi_ARPROT),
        .S00_AXI_arqos(ibex_core_axi_wallpaper_0_instr_axi_ARQOS),
        .S00_AXI_arready(ibex_core_axi_wallpaper_0_instr_axi_ARREADY),
        .S00_AXI_arregion(ibex_core_axi_wallpaper_0_instr_axi_ARREGION),
        .S00_AXI_arsize(ibex_core_axi_wallpaper_0_instr_axi_ARSIZE),
        .S00_AXI_aruser(ibex_core_axi_wallpaper_0_instr_axi_ARUSER),
        .S00_AXI_arvalid(ibex_core_axi_wallpaper_0_instr_axi_ARVALID),
        .S00_AXI_awaddr(ibex_core_axi_wallpaper_0_instr_axi_AWADDR),
        .S00_AXI_awburst(ibex_core_axi_wallpaper_0_instr_axi_AWBURST),
        .S00_AXI_awcache(ibex_core_axi_wallpaper_0_instr_axi_AWCACHE),
        .S00_AXI_awid(ibex_core_axi_wallpaper_0_instr_axi_AWID),
        .S00_AXI_awlen(ibex_core_axi_wallpaper_0_instr_axi_AWLEN),
        .S00_AXI_awlock(ibex_core_axi_wallpaper_0_instr_axi_AWLOCK),
        .S00_AXI_awprot(ibex_core_axi_wallpaper_0_instr_axi_AWPROT),
        .S00_AXI_awqos(ibex_core_axi_wallpaper_0_instr_axi_AWQOS),
        .S00_AXI_awready(ibex_core_axi_wallpaper_0_instr_axi_AWREADY),
        .S00_AXI_awregion(ibex_core_axi_wallpaper_0_instr_axi_AWREGION),
        .S00_AXI_awsize(ibex_core_axi_wallpaper_0_instr_axi_AWSIZE),
        .S00_AXI_awuser(ibex_core_axi_wallpaper_0_instr_axi_AWUSER),
        .S00_AXI_awvalid(ibex_core_axi_wallpaper_0_instr_axi_AWVALID),
        .S00_AXI_bid(ibex_core_axi_wallpaper_0_instr_axi_BID),
        .S00_AXI_bready(ibex_core_axi_wallpaper_0_instr_axi_BREADY),
        .S00_AXI_bresp(ibex_core_axi_wallpaper_0_instr_axi_BRESP),
        .S00_AXI_buser(ibex_core_axi_wallpaper_0_instr_axi_BUSER),
        .S00_AXI_bvalid(ibex_core_axi_wallpaper_0_instr_axi_BVALID),
        .S00_AXI_rdata(ibex_core_axi_wallpaper_0_instr_axi_RDATA),
        .S00_AXI_rid(ibex_core_axi_wallpaper_0_instr_axi_RID),
        .S00_AXI_rlast(ibex_core_axi_wallpaper_0_instr_axi_RLAST),
        .S00_AXI_rready(ibex_core_axi_wallpaper_0_instr_axi_RREADY),
        .S00_AXI_rresp(ibex_core_axi_wallpaper_0_instr_axi_RRESP),
        .S00_AXI_ruser(ibex_core_axi_wallpaper_0_instr_axi_RUSER),
        .S00_AXI_rvalid(ibex_core_axi_wallpaper_0_instr_axi_RVALID),
        .S00_AXI_wdata(ibex_core_axi_wallpaper_0_instr_axi_WDATA),
        .S00_AXI_wlast(ibex_core_axi_wallpaper_0_instr_axi_WLAST),
        .S00_AXI_wready(ibex_core_axi_wallpaper_0_instr_axi_WREADY),
        .S00_AXI_wstrb(ibex_core_axi_wallpaper_0_instr_axi_WSTRB),
        .S00_AXI_wuser(ibex_core_axi_wallpaper_0_instr_axi_WUSER),
        .S00_AXI_wvalid(ibex_core_axi_wallpaper_0_instr_axi_WVALID));
  design_1_ibex_core_axi_wallpaper_0_axi_periph_1_0 ibex_core_axi_wallpaper_0_axi_periph_1
       (.ACLK(clk_wiz_clk_out1),
        .ARESETN(rst_clk_wiz_100M_interconnect_aresetn),
        .M00_ACLK(clk_wiz_clk_out1),
        .M00_ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .M00_AXI_araddr(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARCACHE),
        .M00_AXI_arid(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARID),
        .M00_AXI_arlen(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARQOS),
        .M00_AXI_arready(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARREADY),
        .M00_AXI_arregion(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARREGION),
        .M00_AXI_arsize(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARSIZE),
        .M00_AXI_aruser(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARUSER),
        .M00_AXI_arvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWCACHE),
        .M00_AXI_awid(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWID),
        .M00_AXI_awlen(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWQOS),
        .M00_AXI_awready(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWREADY),
        .M00_AXI_awregion(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWREGION),
        .M00_AXI_awsize(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWSIZE),
        .M00_AXI_awuser(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWUSER),
        .M00_AXI_awvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWVALID),
        .M00_AXI_bid(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_BID),
        .M00_AXI_bready(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_BREADY),
        .M00_AXI_bresp(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_BRESP),
        .M00_AXI_buser(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_BUSER),
        .M00_AXI_bvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_BVALID),
        .M00_AXI_rdata(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RDATA),
        .M00_AXI_rid(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RID),
        .M00_AXI_rlast(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RLAST),
        .M00_AXI_rready(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RREADY),
        .M00_AXI_rresp(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RRESP),
        .M00_AXI_ruser(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RUSER),
        .M00_AXI_rvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RVALID),
        .M00_AXI_wdata(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_WDATA),
        .M00_AXI_wlast(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_WLAST),
        .M00_AXI_wready(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_WSTRB),
        .M00_AXI_wuser(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_WUSER),
        .M00_AXI_wvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_WVALID),
        .M01_ACLK(clk_wiz_clk_out1),
        .M01_ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .M01_AXI_araddr(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARADDR),
        .M01_AXI_arburst(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARBURST),
        .M01_AXI_arcache(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARCACHE),
        .M01_AXI_arid(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARID),
        .M01_AXI_arlen(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARLEN),
        .M01_AXI_arlock(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARLOCK),
        .M01_AXI_arprot(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARPROT),
        .M01_AXI_arready(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARREADY),
        .M01_AXI_arsize(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWADDR),
        .M01_AXI_awburst(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWBURST),
        .M01_AXI_awcache(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWCACHE),
        .M01_AXI_awid(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWID),
        .M01_AXI_awlen(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWLEN),
        .M01_AXI_awlock(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWLOCK),
        .M01_AXI_awprot(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWPROT),
        .M01_AXI_awready(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWREADY),
        .M01_AXI_awsize(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_AWVALID),
        .M01_AXI_bid(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_BID),
        .M01_AXI_bready(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_BREADY),
        .M01_AXI_bresp(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_BVALID),
        .M01_AXI_rdata(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_RDATA),
        .M01_AXI_rid(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_RID),
        .M01_AXI_rlast(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_RLAST),
        .M01_AXI_rready(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_RREADY),
        .M01_AXI_rresp(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_RVALID),
        .M01_AXI_wdata(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_WDATA),
        .M01_AXI_wlast(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_WLAST),
        .M01_AXI_wready(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_WREADY),
        .M01_AXI_wstrb(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI_WVALID),
        .M02_ACLK(clk_wiz_clk_out1),
        .M02_ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .M02_AXI_araddr(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_ARADDR),
        .M02_AXI_arready(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_ARREADY),
        .M02_AXI_arvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_ARVALID),
        .M02_AXI_awaddr(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_AWADDR),
        .M02_AXI_awready(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_AWREADY),
        .M02_AXI_awvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_AWVALID),
        .M02_AXI_bready(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_BREADY),
        .M02_AXI_bresp(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_BRESP),
        .M02_AXI_bvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_BVALID),
        .M02_AXI_rdata(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_RDATA),
        .M02_AXI_rready(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_RREADY),
        .M02_AXI_rresp(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_RRESP),
        .M02_AXI_rvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_RVALID),
        .M02_AXI_wdata(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_WDATA),
        .M02_AXI_wready(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_WREADY),
        .M02_AXI_wstrb(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_WSTRB),
        .M02_AXI_wvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI_WVALID),
        .M03_ACLK(clk_wiz_clk_out1),
        .M03_ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .M03_AXI_araddr(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_ARADDR),
        .M03_AXI_arready(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_ARREADY),
        .M03_AXI_arvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_ARVALID),
        .M03_AXI_awaddr(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_AWADDR),
        .M03_AXI_awready(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_AWREADY),
        .M03_AXI_awvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_AWVALID),
        .M03_AXI_bready(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_BREADY),
        .M03_AXI_bresp(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_BRESP),
        .M03_AXI_bvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_BVALID),
        .M03_AXI_rdata(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_RDATA),
        .M03_AXI_rready(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_RREADY),
        .M03_AXI_rresp(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_RRESP),
        .M03_AXI_rvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_RVALID),
        .M03_AXI_wdata(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_WDATA),
        .M03_AXI_wready(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_WREADY),
        .M03_AXI_wstrb(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_WSTRB),
        .M03_AXI_wvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI_WVALID),
        .M04_ACLK(clk_wiz_clk_out1),
        .M04_ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .M04_AXI_araddr(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_ARADDR),
        .M04_AXI_arready(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_ARREADY),
        .M04_AXI_arvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_ARVALID),
        .M04_AXI_awaddr(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_AWADDR),
        .M04_AXI_awready(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_AWREADY),
        .M04_AXI_awvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_AWVALID),
        .M04_AXI_bready(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_BREADY),
        .M04_AXI_bresp(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_BRESP),
        .M04_AXI_bvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_BVALID),
        .M04_AXI_rdata(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_RDATA),
        .M04_AXI_rready(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_RREADY),
        .M04_AXI_rresp(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_RRESP),
        .M04_AXI_rvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_RVALID),
        .M04_AXI_wdata(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_WDATA),
        .M04_AXI_wready(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_WREADY),
        .M04_AXI_wstrb(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_WSTRB),
        .M04_AXI_wvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI_WVALID),
        .S00_ACLK(clk_wiz_clk_out1),
        .S00_ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .S00_AXI_araddr(ibex_core_axi_wallpaper_0_data_axi_ARADDR),
        .S00_AXI_arburst(ibex_core_axi_wallpaper_0_data_axi_ARBURST),
        .S00_AXI_arcache(ibex_core_axi_wallpaper_0_data_axi_ARCACHE),
        .S00_AXI_arid(ibex_core_axi_wallpaper_0_data_axi_ARID),
        .S00_AXI_arlen(ibex_core_axi_wallpaper_0_data_axi_ARLEN),
        .S00_AXI_arlock(ibex_core_axi_wallpaper_0_data_axi_ARLOCK),
        .S00_AXI_arprot(ibex_core_axi_wallpaper_0_data_axi_ARPROT),
        .S00_AXI_arqos(ibex_core_axi_wallpaper_0_data_axi_ARQOS),
        .S00_AXI_arready(ibex_core_axi_wallpaper_0_data_axi_ARREADY),
        .S00_AXI_arsize(ibex_core_axi_wallpaper_0_data_axi_ARSIZE),
        .S00_AXI_aruser(ibex_core_axi_wallpaper_0_data_axi_ARUSER),
        .S00_AXI_arvalid(ibex_core_axi_wallpaper_0_data_axi_ARVALID),
        .S00_AXI_awaddr(ibex_core_axi_wallpaper_0_data_axi_AWADDR),
        .S00_AXI_awburst(ibex_core_axi_wallpaper_0_data_axi_AWBURST),
        .S00_AXI_awcache(ibex_core_axi_wallpaper_0_data_axi_AWCACHE),
        .S00_AXI_awid(ibex_core_axi_wallpaper_0_data_axi_AWID),
        .S00_AXI_awlen(ibex_core_axi_wallpaper_0_data_axi_AWLEN),
        .S00_AXI_awlock(ibex_core_axi_wallpaper_0_data_axi_AWLOCK),
        .S00_AXI_awprot(ibex_core_axi_wallpaper_0_data_axi_AWPROT),
        .S00_AXI_awqos(ibex_core_axi_wallpaper_0_data_axi_AWQOS),
        .S00_AXI_awready(ibex_core_axi_wallpaper_0_data_axi_AWREADY),
        .S00_AXI_awsize(ibex_core_axi_wallpaper_0_data_axi_AWSIZE),
        .S00_AXI_awuser(ibex_core_axi_wallpaper_0_data_axi_AWUSER),
        .S00_AXI_awvalid(ibex_core_axi_wallpaper_0_data_axi_AWVALID),
        .S00_AXI_bid(ibex_core_axi_wallpaper_0_data_axi_BID),
        .S00_AXI_bready(ibex_core_axi_wallpaper_0_data_axi_BREADY),
        .S00_AXI_bresp(ibex_core_axi_wallpaper_0_data_axi_BRESP),
        .S00_AXI_buser(ibex_core_axi_wallpaper_0_data_axi_BUSER),
        .S00_AXI_bvalid(ibex_core_axi_wallpaper_0_data_axi_BVALID),
        .S00_AXI_rdata(ibex_core_axi_wallpaper_0_data_axi_RDATA),
        .S00_AXI_rid(ibex_core_axi_wallpaper_0_data_axi_RID),
        .S00_AXI_rlast(ibex_core_axi_wallpaper_0_data_axi_RLAST),
        .S00_AXI_rready(ibex_core_axi_wallpaper_0_data_axi_RREADY),
        .S00_AXI_rresp(ibex_core_axi_wallpaper_0_data_axi_RRESP),
        .S00_AXI_ruser(ibex_core_axi_wallpaper_0_data_axi_RUSER),
        .S00_AXI_rvalid(ibex_core_axi_wallpaper_0_data_axi_RVALID),
        .S00_AXI_wdata(ibex_core_axi_wallpaper_0_data_axi_WDATA),
        .S00_AXI_wlast(ibex_core_axi_wallpaper_0_data_axi_WLAST),
        .S00_AXI_wready(ibex_core_axi_wallpaper_0_data_axi_WREADY),
        .S00_AXI_wstrb(ibex_core_axi_wallpaper_0_data_axi_WSTRB),
        .S00_AXI_wuser(ibex_core_axi_wallpaper_0_data_axi_WUSER),
        .S00_AXI_wvalid(ibex_core_axi_wallpaper_0_data_axi_WVALID));
  itcm_imp_1TC25OR itcm
       (.axi_aclk(clk_wiz_clk_out1),
        .axi_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .sa_axi_araddr(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARADDR),
        .sa_axi_arburst(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARBURST),
        .sa_axi_arcache(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARCACHE),
        .sa_axi_arid(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARID),
        .sa_axi_arlen(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARLEN),
        .sa_axi_arlock(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARLOCK),
        .sa_axi_arprot(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARPROT),
        .sa_axi_arqos(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARQOS),
        .sa_axi_arready(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARREADY),
        .sa_axi_arregion(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARREGION),
        .sa_axi_arsize(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARSIZE),
        .sa_axi_aruser(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARUSER),
        .sa_axi_arvalid(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_ARVALID),
        .sa_axi_awaddr(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWADDR),
        .sa_axi_awburst(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWBURST),
        .sa_axi_awcache(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWCACHE),
        .sa_axi_awid(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWID),
        .sa_axi_awlen(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWLEN),
        .sa_axi_awlock(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWLOCK),
        .sa_axi_awprot(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWPROT),
        .sa_axi_awqos(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWQOS),
        .sa_axi_awready(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWREADY),
        .sa_axi_awregion(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWREGION),
        .sa_axi_awsize(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWSIZE),
        .sa_axi_awuser(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWUSER),
        .sa_axi_awvalid(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_AWVALID),
        .sa_axi_bid(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_BID),
        .sa_axi_bready(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_BREADY),
        .sa_axi_bresp(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_BRESP),
        .sa_axi_buser(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_BUSER),
        .sa_axi_bvalid(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_BVALID),
        .sa_axi_rdata(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RDATA),
        .sa_axi_rid(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RID),
        .sa_axi_rlast(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RLAST),
        .sa_axi_rready(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RREADY),
        .sa_axi_rresp(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RRESP),
        .sa_axi_ruser(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RUSER),
        .sa_axi_rvalid(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_RVALID),
        .sa_axi_wdata(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_WDATA),
        .sa_axi_wlast(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_WLAST),
        .sa_axi_wready(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_WREADY),
        .sa_axi_wstrb(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_WSTRB),
        .sa_axi_wuser(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_WUSER),
        .sa_axi_wvalid(ibex_core_axi_wallpaper_0_axi_periph_M00_AXI_WVALID),
        .sb_axi_araddr(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARADDR),
        .sb_axi_arburst(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARBURST),
        .sb_axi_arcache(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARCACHE),
        .sb_axi_arid(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARID),
        .sb_axi_arlen(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARLEN),
        .sb_axi_arlock(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARLOCK),
        .sb_axi_arprot(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARPROT),
        .sb_axi_arqos(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARQOS),
        .sb_axi_arready(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARREADY),
        .sb_axi_arregion(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARREGION),
        .sb_axi_arsize(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARSIZE),
        .sb_axi_aruser(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARUSER),
        .sb_axi_arvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_ARVALID),
        .sb_axi_awaddr(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWADDR),
        .sb_axi_awburst(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWBURST),
        .sb_axi_awcache(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWCACHE),
        .sb_axi_awid(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWID),
        .sb_axi_awlen(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWLEN),
        .sb_axi_awlock(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWLOCK),
        .sb_axi_awprot(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWPROT),
        .sb_axi_awqos(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWQOS),
        .sb_axi_awready(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWREADY),
        .sb_axi_awregion(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWREGION),
        .sb_axi_awsize(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWSIZE),
        .sb_axi_awuser(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWUSER),
        .sb_axi_awvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_AWVALID),
        .sb_axi_bid(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_BID),
        .sb_axi_bready(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_BREADY),
        .sb_axi_bresp(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_BRESP),
        .sb_axi_buser(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_BUSER),
        .sb_axi_bvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_BVALID),
        .sb_axi_rdata(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RDATA),
        .sb_axi_rid(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RID),
        .sb_axi_rlast(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RLAST),
        .sb_axi_rready(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RREADY),
        .sb_axi_rresp(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RRESP),
        .sb_axi_ruser(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RUSER),
        .sb_axi_rvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_RVALID),
        .sb_axi_wdata(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_WDATA),
        .sb_axi_wlast(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_WLAST),
        .sb_axi_wready(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_WREADY),
        .sb_axi_wstrb(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_WSTRB),
        .sb_axi_wuser(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_WUSER),
        .sb_axi_wvalid(ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI_WVALID));
  design_1_xlconstant_0_0 vcc
       (.dout(vcc_dout));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(axi_uartlite_0_interrupt),
        .In1(axi_gpio_0_ip2intc_irpt),
        .dout(xlconcat_0_dout));
endmodule

module design_1_ibex_core_axi_wallpaper_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_buser,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_ruser,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wuser,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_buser,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wuser,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [11:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output [3:0]M00_AXI_aruser;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [11:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output [3:0]M00_AXI_awuser;
  output M00_AXI_awvalid;
  input [11:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [3:0]M00_AXI_buser;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input [11:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [3:0]M00_AXI_ruser;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [3:0]M00_AXI_wuser;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input [3:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input [3:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [3:0]S00_AXI_buser;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [3:0]S00_AXI_ruser;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [3:0]S00_AXI_wuser;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire ibex_core_axi_wallpaper_0_axi_periph_ACLK_net;
  wire ibex_core_axi_wallpaper_0_axi_periph_ARESETN_net;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARID;
  wire [7:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARLEN;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARQOS;
  wire ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARREADY;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARREGION;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARSIZE;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARUSER;
  wire ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWID;
  wire [7:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWLEN;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWQOS;
  wire ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWREADY;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWREGION;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWSIZE;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWUSER;
  wire ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWVALID;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_BID;
  wire ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_BRESP;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_BUSER;
  wire ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RDATA;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RID;
  wire ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RLAST;
  wire ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RRESP;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RUSER;
  wire ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_WDATA;
  wire ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_WLAST;
  wire ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_WSTRB;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_WUSER;
  wire ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARADDR;
  wire [1:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARBURST;
  wire [3:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARCACHE;
  wire [11:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARID;
  wire [7:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARLEN;
  wire [0:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARLOCK;
  wire [2:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARPROT;
  wire [3:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARQOS;
  wire s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARREADY;
  wire [3:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARREGION;
  wire [2:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARSIZE;
  wire [3:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARUSER;
  wire s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARVALID;
  wire [31:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWADDR;
  wire [1:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWBURST;
  wire [3:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWCACHE;
  wire [11:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWID;
  wire [7:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWLEN;
  wire [0:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWLOCK;
  wire [2:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWPROT;
  wire [3:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWQOS;
  wire s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWREADY;
  wire [3:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWREGION;
  wire [2:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWSIZE;
  wire [3:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWUSER;
  wire s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWVALID;
  wire [11:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_BID;
  wire s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_BREADY;
  wire [1:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_BRESP;
  wire [3:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_BUSER;
  wire s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_BVALID;
  wire [31:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RDATA;
  wire [11:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RID;
  wire s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RLAST;
  wire s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RREADY;
  wire [1:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RRESP;
  wire [3:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RUSER;
  wire s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RVALID;
  wire [31:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_WDATA;
  wire s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_WLAST;
  wire s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_WREADY;
  wire [3:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_WSTRB;
  wire [3:0]s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_WUSER;
  wire s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARCACHE;
  assign M00_AXI_arid[11:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARID;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARQOS;
  assign M00_AXI_arregion[3:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARREGION;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARSIZE;
  assign M00_AXI_aruser[3:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARUSER;
  assign M00_AXI_arvalid = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWCACHE;
  assign M00_AXI_awid[11:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWID;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWQOS;
  assign M00_AXI_awregion[3:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWREGION;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWSIZE;
  assign M00_AXI_awuser[3:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWUSER;
  assign M00_AXI_awvalid = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_BREADY;
  assign M00_AXI_rready = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_WLAST;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_WSTRB;
  assign M00_AXI_wuser[3:0] = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_WUSER;
  assign M00_AXI_wvalid = s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_buser[3:0] = ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_BUSER;
  assign S00_AXI_bvalid = ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_ruser[3:0] = ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RUSER;
  assign S00_AXI_rvalid = ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_WREADY;
  assign ibex_core_axi_wallpaper_0_axi_periph_ACLK_net = M00_ACLK;
  assign ibex_core_axi_wallpaper_0_axi_periph_ARESETN_net = M00_ARESETN;
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARUSER = S00_AXI_aruser[3:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWUSER = S00_AXI_awuser[3:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_WUSER = S00_AXI_wuser[3:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_BID = M00_AXI_bid[11:0];
  assign s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_BUSER = M00_AXI_buser[3:0];
  assign s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RID = M00_AXI_rid[11:0];
  assign s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RUSER = M00_AXI_ruser[3:0];
  assign s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_WREADY = M00_AXI_wready;
  s00_couplers_imp_4XAA1H s00_couplers
       (.M_ACLK(ibex_core_axi_wallpaper_0_axi_periph_ACLK_net),
        .M_ARESETN(ibex_core_axi_wallpaper_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARADDR),
        .M_AXI_arburst(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARBURST),
        .M_AXI_arcache(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARCACHE),
        .M_AXI_arid(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARID),
        .M_AXI_arlen(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARLEN),
        .M_AXI_arlock(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARPROT),
        .M_AXI_arqos(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARQOS),
        .M_AXI_arready(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARREADY),
        .M_AXI_arregion(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARREGION),
        .M_AXI_arsize(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARSIZE),
        .M_AXI_aruser(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARUSER),
        .M_AXI_arvalid(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWADDR),
        .M_AXI_awburst(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWBURST),
        .M_AXI_awcache(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWCACHE),
        .M_AXI_awid(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWID),
        .M_AXI_awlen(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWLEN),
        .M_AXI_awlock(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWPROT),
        .M_AXI_awqos(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWQOS),
        .M_AXI_awready(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWREADY),
        .M_AXI_awregion(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWREGION),
        .M_AXI_awsize(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWSIZE),
        .M_AXI_awuser(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWUSER),
        .M_AXI_awvalid(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_AWVALID),
        .M_AXI_bid(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_BID),
        .M_AXI_bready(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_BREADY),
        .M_AXI_bresp(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_BRESP),
        .M_AXI_buser(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_BUSER),
        .M_AXI_bvalid(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_BVALID),
        .M_AXI_rdata(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RDATA),
        .M_AXI_rid(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RID),
        .M_AXI_rlast(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RLAST),
        .M_AXI_rready(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RREADY),
        .M_AXI_rresp(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RRESP),
        .M_AXI_ruser(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RUSER),
        .M_AXI_rvalid(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_RVALID),
        .M_AXI_wdata(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_WDATA),
        .M_AXI_wlast(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_WLAST),
        .M_AXI_wready(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_WREADY),
        .M_AXI_wstrb(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_WSTRB),
        .M_AXI_wuser(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_WUSER),
        .M_AXI_wvalid(s00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arregion(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARREGION),
        .S_AXI_arsize(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awregion(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWREGION),
        .S_AXI_awsize(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_buser(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_BUSER),
        .S_AXI_bvalid(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_ruser(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RUSER),
        .S_AXI_rvalid(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wlast(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wuser(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_WUSER),
        .S_AXI_wvalid(ibex_core_axi_wallpaper_0_axi_periph_to_s00_couplers_WVALID));
endmodule

module design_1_ibex_core_axi_wallpaper_0_axi_periph_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_buser,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_ruser,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wuser,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arid,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awid,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rid,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_buser,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wuser,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [11:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input [0:0]M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output [3:0]M00_AXI_aruser;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [11:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input [0:0]M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output [3:0]M00_AXI_awuser;
  output [0:0]M00_AXI_awvalid;
  input [11:0]M00_AXI_bid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [3:0]M00_AXI_buser;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input [11:0]M00_AXI_rid;
  input [0:0]M00_AXI_rlast;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [3:0]M00_AXI_ruser;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wlast;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [3:0]M00_AXI_wuser;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [3:0]M01_AXI_arcache;
  output [11:0]M01_AXI_arid;
  output [7:0]M01_AXI_arlen;
  output [0:0]M01_AXI_arlock;
  output [2:0]M01_AXI_arprot;
  input [0:0]M01_AXI_arready;
  output [2:0]M01_AXI_arsize;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [3:0]M01_AXI_awcache;
  output [11:0]M01_AXI_awid;
  output [7:0]M01_AXI_awlen;
  output [0:0]M01_AXI_awlock;
  output [2:0]M01_AXI_awprot;
  input [0:0]M01_AXI_awready;
  output [2:0]M01_AXI_awsize;
  output [0:0]M01_AXI_awvalid;
  input [11:0]M01_AXI_bid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  input [11:0]M01_AXI_rid;
  input [0:0]M01_AXI_rlast;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  output [0:0]M01_AXI_wlast;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output [0:0]S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [3:0]S00_AXI_aruser;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output [0:0]S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [3:0]S00_AXI_awuser;
  input [0:0]S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [3:0]S00_AXI_buser;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output [0:0]S00_AXI_rlast;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [3:0]S00_AXI_ruser;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [0:0]S00_AXI_wlast;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [3:0]S00_AXI_wuser;
  input [0:0]S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_ACLK_net;
  wire ibex_core_axi_wallpaper_0_axi_periph_1_ARESETN_net;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARADDR;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARBURST;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARCACHE;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARID;
  wire [7:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARLEN;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARLOCK;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARPROT;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARQOS;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARREADY;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARSIZE;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARUSER;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWADDR;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWBURST;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWCACHE;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWID;
  wire [7:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWLEN;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWLOCK;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWPROT;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWQOS;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWREADY;
  wire [2:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWSIZE;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWUSER;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWVALID;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_BID;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_BREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_BRESP;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_BUSER;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_BVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RDATA;
  wire [11:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RID;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RLAST;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RREADY;
  wire [1:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RRESP;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RUSER;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RVALID;
  wire [31:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_WDATA;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_WLAST;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_WREADY;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_WSTRB;
  wire [3:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_WUSER;
  wire [0:0]ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARADDR;
  wire [1:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARBURST;
  wire [3:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARCACHE;
  wire [11:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARID;
  wire [7:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARLEN;
  wire [0:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARLOCK;
  wire [2:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARPROT;
  wire [3:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARQOS;
  wire [0:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARREADY;
  wire [3:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARREGION;
  wire [2:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARSIZE;
  wire [3:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARUSER;
  wire [0:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARVALID;
  wire [31:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWADDR;
  wire [1:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWBURST;
  wire [3:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWCACHE;
  wire [11:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWID;
  wire [7:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWLEN;
  wire [0:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWLOCK;
  wire [2:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWPROT;
  wire [3:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWQOS;
  wire [0:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWREADY;
  wire [3:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWREGION;
  wire [2:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWSIZE;
  wire [3:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWUSER;
  wire [0:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWVALID;
  wire [11:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BID;
  wire [0:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BREADY;
  wire [1:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BRESP;
  wire [3:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BUSER;
  wire [0:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BVALID;
  wire [31:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RDATA;
  wire [11:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RID;
  wire [0:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RLAST;
  wire [0:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RREADY;
  wire [1:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RRESP;
  wire [3:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RUSER;
  wire [0:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RVALID;
  wire [31:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WDATA;
  wire [0:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WLAST;
  wire [0:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WREADY;
  wire [3:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WSTRB;
  wire [3:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WUSER;
  wire [0:0]m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WVALID;
  wire [31:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARADDR;
  wire [1:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARBURST;
  wire [3:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARCACHE;
  wire [11:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARID;
  wire [7:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARLEN;
  wire [0:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARLOCK;
  wire [2:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARPROT;
  wire [0:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARREADY;
  wire [2:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARSIZE;
  wire [0:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARVALID;
  wire [31:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWADDR;
  wire [1:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWBURST;
  wire [3:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWCACHE;
  wire [11:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWID;
  wire [7:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWLEN;
  wire [0:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWLOCK;
  wire [2:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWPROT;
  wire [0:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWREADY;
  wire [2:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWSIZE;
  wire [0:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWVALID;
  wire [11:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BID;
  wire [0:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BREADY;
  wire [1:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BRESP;
  wire [0:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BVALID;
  wire [31:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RDATA;
  wire [11:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RID;
  wire [0:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RLAST;
  wire [0:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RREADY;
  wire [1:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RRESP;
  wire [0:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RVALID;
  wire [31:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WDATA;
  wire [0:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WLAST;
  wire [0:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WREADY;
  wire [3:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WSTRB;
  wire [0:0]m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WVALID;
  wire [31:0]m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARADDR;
  wire m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARREADY;
  wire m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARVALID;
  wire [31:0]m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWADDR;
  wire m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWREADY;
  wire m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWVALID;
  wire m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BREADY;
  wire [1:0]m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BRESP;
  wire m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BVALID;
  wire [31:0]m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RDATA;
  wire m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RREADY;
  wire [1:0]m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RRESP;
  wire m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RVALID;
  wire [31:0]m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WDATA;
  wire m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WREADY;
  wire [3:0]m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WSTRB;
  wire m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WVALID;
  wire [31:0]m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARADDR;
  wire m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARREADY;
  wire m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARVALID;
  wire [31:0]m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWADDR;
  wire m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWREADY;
  wire m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWVALID;
  wire m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BREADY;
  wire [1:0]m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BRESP;
  wire m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BVALID;
  wire [31:0]m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RDATA;
  wire m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RREADY;
  wire [1:0]m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RRESP;
  wire m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RVALID;
  wire [31:0]m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WDATA;
  wire m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WREADY;
  wire [3:0]m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WSTRB;
  wire m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WVALID;
  wire [31:0]m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARADDR;
  wire m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARREADY;
  wire m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARVALID;
  wire [31:0]m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWADDR;
  wire m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWREADY;
  wire m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWVALID;
  wire m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BREADY;
  wire [1:0]m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BRESP;
  wire m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BVALID;
  wire [31:0]m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RDATA;
  wire m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RREADY;
  wire [1:0]m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RRESP;
  wire m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RVALID;
  wire [31:0]m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WDATA;
  wire m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WREADY;
  wire [3:0]m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WSTRB;
  wire m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [11:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire [3:0]s00_couplers_to_xbar_ARUSER;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [11:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire [3:0]s00_couplers_to_xbar_AWUSER;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [11:0]s00_couplers_to_xbar_BID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [3:0]s00_couplers_to_xbar_BUSER;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [11:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [3:0]s00_couplers_to_xbar_RUSER;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [3:0]s00_couplers_to_xbar_WUSER;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [11:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [3:0]xbar_to_m00_couplers_ARUSER;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [11:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [3:0]xbar_to_m00_couplers_AWUSER;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [11:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [3:0]xbar_to_m00_couplers_BUSER;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [11:0]xbar_to_m00_couplers_RID;
  wire [0:0]xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [3:0]xbar_to_m00_couplers_RUSER;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [3:0]xbar_to_m00_couplers_WUSER;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [23:12]xbar_to_m01_couplers_ARID;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [23:12]xbar_to_m01_couplers_AWID;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [11:0]xbar_to_m01_couplers_BID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [11:0]xbar_to_m01_couplers_RID;
  wire [0:0]xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [5:4]xbar_to_m02_couplers_ARBURST;
  wire [11:8]xbar_to_m02_couplers_ARCACHE;
  wire [35:24]xbar_to_m02_couplers_ARID;
  wire [23:16]xbar_to_m02_couplers_ARLEN;
  wire [2:2]xbar_to_m02_couplers_ARLOCK;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire [11:8]xbar_to_m02_couplers_ARQOS;
  wire xbar_to_m02_couplers_ARREADY;
  wire [11:8]xbar_to_m02_couplers_ARREGION;
  wire [8:6]xbar_to_m02_couplers_ARSIZE;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [5:4]xbar_to_m02_couplers_AWBURST;
  wire [11:8]xbar_to_m02_couplers_AWCACHE;
  wire [35:24]xbar_to_m02_couplers_AWID;
  wire [23:16]xbar_to_m02_couplers_AWLEN;
  wire [2:2]xbar_to_m02_couplers_AWLOCK;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire [11:8]xbar_to_m02_couplers_AWQOS;
  wire xbar_to_m02_couplers_AWREADY;
  wire [11:8]xbar_to_m02_couplers_AWREGION;
  wire [8:6]xbar_to_m02_couplers_AWSIZE;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [11:0]xbar_to_m02_couplers_BID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [11:0]xbar_to_m02_couplers_RID;
  wire xbar_to_m02_couplers_RLAST;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [2:2]xbar_to_m02_couplers_WLAST;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [7:6]xbar_to_m03_couplers_ARBURST;
  wire [15:12]xbar_to_m03_couplers_ARCACHE;
  wire [47:36]xbar_to_m03_couplers_ARID;
  wire [31:24]xbar_to_m03_couplers_ARLEN;
  wire [3:3]xbar_to_m03_couplers_ARLOCK;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [15:12]xbar_to_m03_couplers_ARQOS;
  wire xbar_to_m03_couplers_ARREADY;
  wire [15:12]xbar_to_m03_couplers_ARREGION;
  wire [11:9]xbar_to_m03_couplers_ARSIZE;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [7:6]xbar_to_m03_couplers_AWBURST;
  wire [15:12]xbar_to_m03_couplers_AWCACHE;
  wire [47:36]xbar_to_m03_couplers_AWID;
  wire [31:24]xbar_to_m03_couplers_AWLEN;
  wire [3:3]xbar_to_m03_couplers_AWLOCK;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [15:12]xbar_to_m03_couplers_AWQOS;
  wire xbar_to_m03_couplers_AWREADY;
  wire [15:12]xbar_to_m03_couplers_AWREGION;
  wire [11:9]xbar_to_m03_couplers_AWSIZE;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [11:0]xbar_to_m03_couplers_BID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [11:0]xbar_to_m03_couplers_RID;
  wire xbar_to_m03_couplers_RLAST;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [3:3]xbar_to_m03_couplers_WLAST;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [9:8]xbar_to_m04_couplers_ARBURST;
  wire [19:16]xbar_to_m04_couplers_ARCACHE;
  wire [59:48]xbar_to_m04_couplers_ARID;
  wire [39:32]xbar_to_m04_couplers_ARLEN;
  wire [4:4]xbar_to_m04_couplers_ARLOCK;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire [19:16]xbar_to_m04_couplers_ARQOS;
  wire xbar_to_m04_couplers_ARREADY;
  wire [19:16]xbar_to_m04_couplers_ARREGION;
  wire [14:12]xbar_to_m04_couplers_ARSIZE;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [9:8]xbar_to_m04_couplers_AWBURST;
  wire [19:16]xbar_to_m04_couplers_AWCACHE;
  wire [59:48]xbar_to_m04_couplers_AWID;
  wire [39:32]xbar_to_m04_couplers_AWLEN;
  wire [4:4]xbar_to_m04_couplers_AWLOCK;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire [19:16]xbar_to_m04_couplers_AWQOS;
  wire xbar_to_m04_couplers_AWREADY;
  wire [19:16]xbar_to_m04_couplers_AWREGION;
  wire [14:12]xbar_to_m04_couplers_AWSIZE;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [11:0]xbar_to_m04_couplers_BID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [11:0]xbar_to_m04_couplers_RID;
  wire xbar_to_m04_couplers_RLAST;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [4:4]xbar_to_m04_couplers_WLAST;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [19:0]NLW_xbar_m_axi_arqos_UNCONNECTED;
  wire [19:0]NLW_xbar_m_axi_arregion_UNCONNECTED;
  wire [19:0]NLW_xbar_m_axi_awqos_UNCONNECTED;
  wire [19:0]NLW_xbar_m_axi_awregion_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARCACHE;
  assign M00_AXI_arid[11:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARQOS;
  assign M00_AXI_arregion[3:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARREGION;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARSIZE;
  assign M00_AXI_aruser[3:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARUSER;
  assign M00_AXI_arvalid[0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWCACHE;
  assign M00_AXI_awid[11:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWQOS;
  assign M00_AXI_awregion[3:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWREGION;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWSIZE;
  assign M00_AXI_awuser[3:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWUSER;
  assign M00_AXI_awvalid[0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WDATA;
  assign M00_AXI_wlast[0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WLAST;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WSTRB;
  assign M00_AXI_wuser[3:0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WUSER;
  assign M00_AXI_wvalid[0] = m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARADDR;
  assign M01_AXI_arburst[1:0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARBURST;
  assign M01_AXI_arcache[3:0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARCACHE;
  assign M01_AXI_arid[11:0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARID;
  assign M01_AXI_arlen[7:0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARLEN;
  assign M01_AXI_arlock[0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARLOCK;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARPROT;
  assign M01_AXI_arsize[2:0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARSIZE;
  assign M01_AXI_arvalid[0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWADDR;
  assign M01_AXI_awburst[1:0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWBURST;
  assign M01_AXI_awcache[3:0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWCACHE;
  assign M01_AXI_awid[11:0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWID;
  assign M01_AXI_awlen[7:0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWLEN;
  assign M01_AXI_awlock[0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWLOCK;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWPROT;
  assign M01_AXI_awsize[2:0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWSIZE;
  assign M01_AXI_awvalid[0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WDATA;
  assign M01_AXI_wlast[0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WLAST;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BREADY;
  assign M02_AXI_rready = m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BREADY;
  assign M03_AXI_rready = m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BREADY;
  assign M04_AXI_rready = m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_BRESP;
  assign S00_AXI_buser[3:0] = ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_BUSER;
  assign S00_AXI_bvalid[0] = ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RID;
  assign S00_AXI_rlast[0] = ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RRESP;
  assign S00_AXI_ruser[3:0] = ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RUSER;
  assign S00_AXI_rvalid[0] = ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_WREADY;
  assign ibex_core_axi_wallpaper_0_axi_periph_1_ACLK_net = ACLK;
  assign ibex_core_axi_wallpaper_0_axi_periph_1_ARESETN_net = ARESETN;
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARUSER = S00_AXI_aruser[3:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWUSER = S00_AXI_awuser[3:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_WLAST = S00_AXI_wlast[0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_WUSER = S00_AXI_wuser[3:0];
  assign ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BID = M00_AXI_bid[11:0];
  assign m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BUSER = M00_AXI_buser[3:0];
  assign m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RID = M00_AXI_rid[11:0];
  assign m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RLAST = M00_AXI_rlast[0];
  assign m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RUSER = M00_AXI_ruser[3:0];
  assign m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BID = M01_AXI_bid[11:0];
  assign m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RID = M01_AXI_rid[11:0];
  assign m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RLAST = M01_AXI_rlast[0];
  assign m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WREADY = M02_AXI_wready;
  assign m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WREADY = M03_AXI_wready;
  assign m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WREADY = M04_AXI_wready;
  m00_couplers_imp_QWE1FZ m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARADDR),
        .M_AXI_arburst(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARBURST),
        .M_AXI_arcache(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARCACHE),
        .M_AXI_arid(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARID),
        .M_AXI_arlen(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARLEN),
        .M_AXI_arlock(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARPROT),
        .M_AXI_arqos(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARQOS),
        .M_AXI_arready(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARREADY),
        .M_AXI_arregion(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARREGION),
        .M_AXI_arsize(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARSIZE),
        .M_AXI_aruser(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARUSER),
        .M_AXI_arvalid(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWADDR),
        .M_AXI_awburst(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWBURST),
        .M_AXI_awcache(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWCACHE),
        .M_AXI_awid(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWID),
        .M_AXI_awlen(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWLEN),
        .M_AXI_awlock(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWPROT),
        .M_AXI_awqos(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWQOS),
        .M_AXI_awready(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWREADY),
        .M_AXI_awregion(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWREGION),
        .M_AXI_awsize(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWSIZE),
        .M_AXI_awuser(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWUSER),
        .M_AXI_awvalid(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWVALID),
        .M_AXI_bid(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BID),
        .M_AXI_bready(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BREADY),
        .M_AXI_bresp(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BRESP),
        .M_AXI_buser(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BUSER),
        .M_AXI_bvalid(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BVALID),
        .M_AXI_rdata(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RDATA),
        .M_AXI_rid(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RID),
        .M_AXI_rlast(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RLAST),
        .M_AXI_rready(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RREADY),
        .M_AXI_rresp(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RRESP),
        .M_AXI_ruser(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RUSER),
        .M_AXI_rvalid(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RVALID),
        .M_AXI_wdata(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WDATA),
        .M_AXI_wlast(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WLAST),
        .M_AXI_wready(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WREADY),
        .M_AXI_wstrb(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WSTRB),
        .M_AXI_wuser(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WUSER),
        .M_AXI_wvalid(m00_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WVALID),
        .S_ACLK(ibex_core_axi_wallpaper_0_axi_periph_1_ACLK_net),
        .S_ARESETN(ibex_core_axi_wallpaper_0_axi_periph_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_aruser(xbar_to_m00_couplers_ARUSER),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awuser(xbar_to_m00_couplers_AWUSER),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_buser(xbar_to_m00_couplers_BUSER),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_ruser(xbar_to_m00_couplers_RUSER),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wuser(xbar_to_m00_couplers_WUSER),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_13UNAR2 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARADDR),
        .M_AXI_arburst(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARBURST),
        .M_AXI_arcache(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARCACHE),
        .M_AXI_arid(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARID),
        .M_AXI_arlen(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARLEN),
        .M_AXI_arlock(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARLOCK),
        .M_AXI_arprot(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARPROT),
        .M_AXI_arready(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARREADY),
        .M_AXI_arsize(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARSIZE),
        .M_AXI_arvalid(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWADDR),
        .M_AXI_awburst(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWBURST),
        .M_AXI_awcache(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWCACHE),
        .M_AXI_awid(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWID),
        .M_AXI_awlen(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWLEN),
        .M_AXI_awlock(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWLOCK),
        .M_AXI_awprot(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWPROT),
        .M_AXI_awready(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWREADY),
        .M_AXI_awsize(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWSIZE),
        .M_AXI_awvalid(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWVALID),
        .M_AXI_bid(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BID),
        .M_AXI_bready(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BREADY),
        .M_AXI_bresp(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BRESP),
        .M_AXI_bvalid(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BVALID),
        .M_AXI_rdata(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RDATA),
        .M_AXI_rid(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RID),
        .M_AXI_rlast(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RLAST),
        .M_AXI_rready(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RREADY),
        .M_AXI_rresp(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RRESP),
        .M_AXI_rvalid(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RVALID),
        .M_AXI_wdata(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WDATA),
        .M_AXI_wlast(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WLAST),
        .M_AXI_wready(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WREADY),
        .M_AXI_wstrb(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WVALID),
        .S_ACLK(ibex_core_axi_wallpaper_0_axi_periph_1_ACLK_net),
        .S_ARESETN(ibex_core_axi_wallpaper_0_axi_periph_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m01_couplers_ARID),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m01_couplers_AWID),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m01_couplers_BID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rid(xbar_to_m01_couplers_RID),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_S2DBGS m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARADDR),
        .M_AXI_arready(m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWADDR),
        .M_AXI_awready(m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWVALID),
        .M_AXI_bready(m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BREADY),
        .M_AXI_bresp(m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BRESP),
        .M_AXI_bvalid(m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BVALID),
        .M_AXI_rdata(m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RDATA),
        .M_AXI_rready(m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RREADY),
        .M_AXI_rresp(m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RRESP),
        .M_AXI_rvalid(m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RVALID),
        .M_AXI_wdata(m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WDATA),
        .M_AXI_wready(m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WREADY),
        .M_AXI_wstrb(m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WVALID),
        .S_ACLK(ibex_core_axi_wallpaper_0_axi_periph_1_ACLK_net),
        .S_ARESETN(ibex_core_axi_wallpaper_0_axi_periph_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m02_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m02_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m02_couplers_ARID),
        .S_AXI_arlen(xbar_to_m02_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m02_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m02_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m02_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m02_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m02_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m02_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m02_couplers_AWID),
        .S_AXI_awlen(xbar_to_m02_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m02_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m02_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m02_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m02_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m02_couplers_BID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rid(xbar_to_m02_couplers_RID),
        .S_AXI_rlast(xbar_to_m02_couplers_RLAST),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m02_couplers_WLAST),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_12EZ25P m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARADDR),
        .M_AXI_arready(m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWADDR),
        .M_AXI_awready(m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWVALID),
        .M_AXI_bready(m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BREADY),
        .M_AXI_bresp(m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BRESP),
        .M_AXI_bvalid(m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BVALID),
        .M_AXI_rdata(m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RDATA),
        .M_AXI_rready(m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RREADY),
        .M_AXI_rresp(m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RRESP),
        .M_AXI_rvalid(m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RVALID),
        .M_AXI_wdata(m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WDATA),
        .M_AXI_wready(m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WREADY),
        .M_AXI_wstrb(m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WVALID),
        .S_ACLK(ibex_core_axi_wallpaper_0_axi_periph_1_ACLK_net),
        .S_ARESETN(ibex_core_axi_wallpaper_0_axi_periph_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m03_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m03_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m03_couplers_ARID),
        .S_AXI_arlen(xbar_to_m03_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m03_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m03_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m03_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m03_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m03_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m03_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m03_couplers_AWID),
        .S_AXI_awlen(xbar_to_m03_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m03_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m03_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m03_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m03_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m03_couplers_BID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rid(xbar_to_m03_couplers_RID),
        .S_AXI_rlast(xbar_to_m03_couplers_RLAST),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m03_couplers_WLAST),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_TSB2KP m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARADDR),
        .M_AXI_arready(m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWADDR),
        .M_AXI_awready(m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_AWVALID),
        .M_AXI_bready(m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BREADY),
        .M_AXI_bresp(m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BRESP),
        .M_AXI_bvalid(m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_BVALID),
        .M_AXI_rdata(m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RDATA),
        .M_AXI_rready(m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RREADY),
        .M_AXI_rresp(m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RRESP),
        .M_AXI_rvalid(m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_RVALID),
        .M_AXI_wdata(m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WDATA),
        .M_AXI_wready(m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WREADY),
        .M_AXI_wstrb(m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_ibex_core_axi_wallpaper_0_axi_periph_1_WVALID),
        .S_ACLK(ibex_core_axi_wallpaper_0_axi_periph_1_ACLK_net),
        .S_ARESETN(ibex_core_axi_wallpaper_0_axi_periph_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m04_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m04_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m04_couplers_ARID),
        .S_AXI_arlen(xbar_to_m04_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m04_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m04_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m04_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m04_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m04_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m04_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m04_couplers_AWID),
        .S_AXI_awlen(xbar_to_m04_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m04_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m04_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m04_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m04_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m04_couplers_BID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rid(xbar_to_m04_couplers_RID),
        .S_AXI_rlast(xbar_to_m04_couplers_RLAST),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m04_couplers_WLAST),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  s00_couplers_imp_16O8N0T s00_couplers
       (.M_ACLK(ibex_core_axi_wallpaper_0_axi_periph_1_ACLK_net),
        .M_ARESETN(ibex_core_axi_wallpaper_0_axi_periph_1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_aruser(s00_couplers_to_xbar_ARUSER),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awuser(s00_couplers_to_xbar_AWUSER),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_buser(s00_couplers_to_xbar_BUSER),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_ruser(s00_couplers_to_xbar_RUSER),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wuser(s00_couplers_to_xbar_WUSER),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARID),
        .S_AXI_arlen(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARQOS),
        .S_AXI_arready(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWID),
        .S_AXI_awlen(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWQOS),
        .S_AXI_awready(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_AWVALID),
        .S_AXI_bid(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_BID),
        .S_AXI_bready(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_BREADY),
        .S_AXI_bresp(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_BRESP),
        .S_AXI_buser(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_BUSER),
        .S_AXI_bvalid(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_BVALID),
        .S_AXI_rdata(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RDATA),
        .S_AXI_rid(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RID),
        .S_AXI_rlast(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RLAST),
        .S_AXI_rready(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RREADY),
        .S_AXI_rresp(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RRESP),
        .S_AXI_ruser(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RUSER),
        .S_AXI_rvalid(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_RVALID),
        .S_AXI_wdata(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_WDATA),
        .S_AXI_wlast(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_WLAST),
        .S_AXI_wready(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_WSTRB),
        .S_AXI_wuser(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_WUSER),
        .S_AXI_wvalid(ibex_core_axi_wallpaper_0_axi_periph_1_to_s00_couplers_WVALID));
  design_1_xbar_0 xbar
       (.aclk(ibex_core_axi_wallpaper_0_axi_periph_1_ACLK_net),
        .aresetn(ibex_core_axi_wallpaper_0_axi_periph_1_ARESETN_net),
        .m_axi_araddr({xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m04_couplers_ARBURST,xbar_to_m03_couplers_ARBURST,xbar_to_m02_couplers_ARBURST,xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m04_couplers_ARCACHE,xbar_to_m03_couplers_ARCACHE,xbar_to_m02_couplers_ARCACHE,xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arid({xbar_to_m04_couplers_ARID,xbar_to_m03_couplers_ARID,xbar_to_m02_couplers_ARID,xbar_to_m01_couplers_ARID,xbar_to_m00_couplers_ARID}),
        .m_axi_arlen({xbar_to_m04_couplers_ARLEN,xbar_to_m03_couplers_ARLEN,xbar_to_m02_couplers_ARLEN,xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m04_couplers_ARLOCK,xbar_to_m03_couplers_ARLOCK,xbar_to_m02_couplers_ARLOCK,xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m04_couplers_ARQOS,xbar_to_m03_couplers_ARQOS,xbar_to_m02_couplers_ARQOS,NLW_xbar_m_axi_arqos_UNCONNECTED[7:4],xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m04_couplers_ARREGION,xbar_to_m03_couplers_ARREGION,xbar_to_m02_couplers_ARREGION,NLW_xbar_m_axi_arregion_UNCONNECTED[7:4],xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m04_couplers_ARSIZE,xbar_to_m03_couplers_ARSIZE,xbar_to_m02_couplers_ARSIZE,xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_aruser(xbar_to_m00_couplers_ARUSER),
        .m_axi_arvalid({xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m04_couplers_AWBURST,xbar_to_m03_couplers_AWBURST,xbar_to_m02_couplers_AWBURST,xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m04_couplers_AWCACHE,xbar_to_m03_couplers_AWCACHE,xbar_to_m02_couplers_AWCACHE,xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awid({xbar_to_m04_couplers_AWID,xbar_to_m03_couplers_AWID,xbar_to_m02_couplers_AWID,xbar_to_m01_couplers_AWID,xbar_to_m00_couplers_AWID}),
        .m_axi_awlen({xbar_to_m04_couplers_AWLEN,xbar_to_m03_couplers_AWLEN,xbar_to_m02_couplers_AWLEN,xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m04_couplers_AWLOCK,xbar_to_m03_couplers_AWLOCK,xbar_to_m02_couplers_AWLOCK,xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m04_couplers_AWQOS,xbar_to_m03_couplers_AWQOS,xbar_to_m02_couplers_AWQOS,NLW_xbar_m_axi_awqos_UNCONNECTED[7:4],xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m04_couplers_AWREGION,xbar_to_m03_couplers_AWREGION,xbar_to_m02_couplers_AWREGION,NLW_xbar_m_axi_awregion_UNCONNECTED[7:4],xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m04_couplers_AWSIZE,xbar_to_m03_couplers_AWSIZE,xbar_to_m02_couplers_AWSIZE,xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awuser(xbar_to_m00_couplers_AWUSER),
        .m_axi_awvalid({xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({xbar_to_m04_couplers_BID,xbar_to_m03_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m00_couplers_BID}),
        .m_axi_bready({xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_buser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xbar_to_m00_couplers_BUSER}),
        .m_axi_bvalid({xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({xbar_to_m04_couplers_RID,xbar_to_m03_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m00_couplers_RID}),
        .m_axi_rlast({xbar_to_m04_couplers_RLAST,xbar_to_m03_couplers_RLAST,xbar_to_m02_couplers_RLAST,xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_ruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xbar_to_m00_couplers_RUSER}),
        .m_axi_rvalid({xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m04_couplers_WLAST,xbar_to_m03_couplers_WLAST,xbar_to_m02_couplers_WLAST,xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wuser(xbar_to_m00_couplers_WUSER),
        .m_axi_wvalid({xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arburst(s00_couplers_to_xbar_ARBURST),
        .s_axi_arcache(s00_couplers_to_xbar_ARCACHE),
        .s_axi_arid(s00_couplers_to_xbar_ARID),
        .s_axi_arlen(s00_couplers_to_xbar_ARLEN),
        .s_axi_arlock(s00_couplers_to_xbar_ARLOCK),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arqos(s00_couplers_to_xbar_ARQOS),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize(s00_couplers_to_xbar_ARSIZE),
        .s_axi_aruser(s00_couplers_to_xbar_ARUSER),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awburst(s00_couplers_to_xbar_AWBURST),
        .s_axi_awcache(s00_couplers_to_xbar_AWCACHE),
        .s_axi_awid(s00_couplers_to_xbar_AWID),
        .s_axi_awlen(s00_couplers_to_xbar_AWLEN),
        .s_axi_awlock(s00_couplers_to_xbar_AWLOCK),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awqos(s00_couplers_to_xbar_AWQOS),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awsize(s00_couplers_to_xbar_AWSIZE),
        .s_axi_awuser(s00_couplers_to_xbar_AWUSER),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bid(s00_couplers_to_xbar_BID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_buser(s00_couplers_to_xbar_BUSER),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rid(s00_couplers_to_xbar_RID),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_ruser(s00_couplers_to_xbar_RUSER),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wlast(s00_couplers_to_xbar_WLAST),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wuser(s00_couplers_to_xbar_WUSER),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module dtcm_imp_WP3ICL
   (S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    s_axi_aclk,
    s_axi_aresetn);
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input s_axi_aclk;
  input s_axi_aresetn;

  wire [31:0]Conn1_ARADDR;
  wire [1:0]Conn1_ARBURST;
  wire [3:0]Conn1_ARCACHE;
  wire [11:0]Conn1_ARID;
  wire [7:0]Conn1_ARLEN;
  wire [0:0]Conn1_ARLOCK;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire [2:0]Conn1_ARSIZE;
  wire [0:0]Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire [1:0]Conn1_AWBURST;
  wire [3:0]Conn1_AWCACHE;
  wire [11:0]Conn1_AWID;
  wire [7:0]Conn1_AWLEN;
  wire [0:0]Conn1_AWLOCK;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire [2:0]Conn1_AWSIZE;
  wire [0:0]Conn1_AWVALID;
  wire [11:0]Conn1_BID;
  wire [0:0]Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire [11:0]Conn1_RID;
  wire Conn1_RLAST;
  wire [0:0]Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire [0:0]Conn1_WLAST;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire [0:0]Conn1_WVALID;
  wire [15:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [15:0]axi_bram_ctrl_0_BRAM_PORTB_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTB_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTB_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTB_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTB_EN;
  wire axi_bram_ctrl_0_BRAM_PORTB_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTB_WE;
  wire s_axi_aclk_1;
  wire s_axi_aresetn_1;

  assign Conn1_ARADDR = S_AXI_araddr[31:0];
  assign Conn1_ARBURST = S_AXI_arburst[1:0];
  assign Conn1_ARCACHE = S_AXI_arcache[3:0];
  assign Conn1_ARID = S_AXI_arid[11:0];
  assign Conn1_ARLEN = S_AXI_arlen[7:0];
  assign Conn1_ARLOCK = S_AXI_arlock[0];
  assign Conn1_ARPROT = S_AXI_arprot[2:0];
  assign Conn1_ARSIZE = S_AXI_arsize[2:0];
  assign Conn1_ARVALID = S_AXI_arvalid[0];
  assign Conn1_AWADDR = S_AXI_awaddr[31:0];
  assign Conn1_AWBURST = S_AXI_awburst[1:0];
  assign Conn1_AWCACHE = S_AXI_awcache[3:0];
  assign Conn1_AWID = S_AXI_awid[11:0];
  assign Conn1_AWLEN = S_AXI_awlen[7:0];
  assign Conn1_AWLOCK = S_AXI_awlock[0];
  assign Conn1_AWPROT = S_AXI_awprot[2:0];
  assign Conn1_AWSIZE = S_AXI_awsize[2:0];
  assign Conn1_AWVALID = S_AXI_awvalid[0];
  assign Conn1_BREADY = S_AXI_bready[0];
  assign Conn1_RREADY = S_AXI_rready[0];
  assign Conn1_WDATA = S_AXI_wdata[31:0];
  assign Conn1_WLAST = S_AXI_wlast[0];
  assign Conn1_WSTRB = S_AXI_wstrb[3:0];
  assign Conn1_WVALID = S_AXI_wvalid[0];
  assign S_AXI_arready[0] = Conn1_ARREADY;
  assign S_AXI_awready[0] = Conn1_AWREADY;
  assign S_AXI_bid[11:0] = Conn1_BID;
  assign S_AXI_bresp[1:0] = Conn1_BRESP;
  assign S_AXI_bvalid[0] = Conn1_BVALID;
  assign S_AXI_rdata[31:0] = Conn1_RDATA;
  assign S_AXI_rid[11:0] = Conn1_RID;
  assign S_AXI_rlast[0] = Conn1_RLAST;
  assign S_AXI_rresp[1:0] = Conn1_RRESP;
  assign S_AXI_rvalid[0] = Conn1_RVALID;
  assign S_AXI_wready[0] = Conn1_WREADY;
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  design_1_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_addr_b(axi_bram_ctrl_0_BRAM_PORTB_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_clk_b(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_en_b(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rddata_b(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_rst_b(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_we_b(axi_bram_ctrl_0_BRAM_PORTB_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .bram_wrdata_b(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(Conn1_ARADDR[15:0]),
        .s_axi_arburst(Conn1_ARBURST),
        .s_axi_arcache(Conn1_ARCACHE),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arid(Conn1_ARID),
        .s_axi_arlen(Conn1_ARLEN),
        .s_axi_arlock(Conn1_ARLOCK),
        .s_axi_arprot(Conn1_ARPROT),
        .s_axi_arready(Conn1_ARREADY),
        .s_axi_arsize(Conn1_ARSIZE),
        .s_axi_arvalid(Conn1_ARVALID),
        .s_axi_awaddr(Conn1_AWADDR[15:0]),
        .s_axi_awburst(Conn1_AWBURST),
        .s_axi_awcache(Conn1_AWCACHE),
        .s_axi_awid(Conn1_AWID),
        .s_axi_awlen(Conn1_AWLEN),
        .s_axi_awlock(Conn1_AWLOCK),
        .s_axi_awprot(Conn1_AWPROT),
        .s_axi_awready(Conn1_AWREADY),
        .s_axi_awsize(Conn1_AWSIZE),
        .s_axi_awvalid(Conn1_AWVALID),
        .s_axi_bid(Conn1_BID),
        .s_axi_bready(Conn1_BREADY),
        .s_axi_bresp(Conn1_BRESP),
        .s_axi_bvalid(Conn1_BVALID),
        .s_axi_rdata(Conn1_RDATA),
        .s_axi_rid(Conn1_RID),
        .s_axi_rlast(Conn1_RLAST),
        .s_axi_rready(Conn1_RREADY),
        .s_axi_rresp(Conn1_RRESP),
        .s_axi_rvalid(Conn1_RVALID),
        .s_axi_wdata(Conn1_WDATA),
        .s_axi_wlast(Conn1_WLAST),
        .s_axi_wready(Conn1_WREADY),
        .s_axi_wstrb(Conn1_WSTRB),
        .s_axi_wvalid(Conn1_WVALID));
  design_1_axi_bram_ctrl_0_bram_0 blk_dtcm
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTB_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(axi_bram_ctrl_0_BRAM_PORTB_WE));
endmodule

module itcm_imp_1TC25OR
   (axi_aclk,
    axi_aresetn,
    sa_axi_araddr,
    sa_axi_arburst,
    sa_axi_arcache,
    sa_axi_arid,
    sa_axi_arlen,
    sa_axi_arlock,
    sa_axi_arprot,
    sa_axi_arqos,
    sa_axi_arready,
    sa_axi_arregion,
    sa_axi_arsize,
    sa_axi_aruser,
    sa_axi_arvalid,
    sa_axi_awaddr,
    sa_axi_awburst,
    sa_axi_awcache,
    sa_axi_awid,
    sa_axi_awlen,
    sa_axi_awlock,
    sa_axi_awprot,
    sa_axi_awqos,
    sa_axi_awready,
    sa_axi_awregion,
    sa_axi_awsize,
    sa_axi_awuser,
    sa_axi_awvalid,
    sa_axi_bid,
    sa_axi_bready,
    sa_axi_bresp,
    sa_axi_buser,
    sa_axi_bvalid,
    sa_axi_rdata,
    sa_axi_rid,
    sa_axi_rlast,
    sa_axi_rready,
    sa_axi_rresp,
    sa_axi_ruser,
    sa_axi_rvalid,
    sa_axi_wdata,
    sa_axi_wlast,
    sa_axi_wready,
    sa_axi_wstrb,
    sa_axi_wuser,
    sa_axi_wvalid,
    sb_axi_araddr,
    sb_axi_arburst,
    sb_axi_arcache,
    sb_axi_arid,
    sb_axi_arlen,
    sb_axi_arlock,
    sb_axi_arprot,
    sb_axi_arqos,
    sb_axi_arready,
    sb_axi_arregion,
    sb_axi_arsize,
    sb_axi_aruser,
    sb_axi_arvalid,
    sb_axi_awaddr,
    sb_axi_awburst,
    sb_axi_awcache,
    sb_axi_awid,
    sb_axi_awlen,
    sb_axi_awlock,
    sb_axi_awprot,
    sb_axi_awqos,
    sb_axi_awready,
    sb_axi_awregion,
    sb_axi_awsize,
    sb_axi_awuser,
    sb_axi_awvalid,
    sb_axi_bid,
    sb_axi_bready,
    sb_axi_bresp,
    sb_axi_buser,
    sb_axi_bvalid,
    sb_axi_rdata,
    sb_axi_rid,
    sb_axi_rlast,
    sb_axi_rready,
    sb_axi_rresp,
    sb_axi_ruser,
    sb_axi_rvalid,
    sb_axi_wdata,
    sb_axi_wlast,
    sb_axi_wready,
    sb_axi_wstrb,
    sb_axi_wuser,
    sb_axi_wvalid);
  input axi_aclk;
  input axi_aresetn;
  input [31:0]sa_axi_araddr;
  input [1:0]sa_axi_arburst;
  input [3:0]sa_axi_arcache;
  input [11:0]sa_axi_arid;
  input [7:0]sa_axi_arlen;
  input [0:0]sa_axi_arlock;
  input [2:0]sa_axi_arprot;
  input [3:0]sa_axi_arqos;
  output sa_axi_arready;
  input [3:0]sa_axi_arregion;
  input [2:0]sa_axi_arsize;
  input [3:0]sa_axi_aruser;
  input sa_axi_arvalid;
  input [31:0]sa_axi_awaddr;
  input [1:0]sa_axi_awburst;
  input [3:0]sa_axi_awcache;
  input [11:0]sa_axi_awid;
  input [7:0]sa_axi_awlen;
  input [0:0]sa_axi_awlock;
  input [2:0]sa_axi_awprot;
  input [3:0]sa_axi_awqos;
  output sa_axi_awready;
  input [3:0]sa_axi_awregion;
  input [2:0]sa_axi_awsize;
  input [3:0]sa_axi_awuser;
  input sa_axi_awvalid;
  output [11:0]sa_axi_bid;
  input sa_axi_bready;
  output [1:0]sa_axi_bresp;
  output [3:0]sa_axi_buser;
  output sa_axi_bvalid;
  output [31:0]sa_axi_rdata;
  output [11:0]sa_axi_rid;
  output sa_axi_rlast;
  input sa_axi_rready;
  output [1:0]sa_axi_rresp;
  output [3:0]sa_axi_ruser;
  output sa_axi_rvalid;
  input [31:0]sa_axi_wdata;
  input sa_axi_wlast;
  output sa_axi_wready;
  input [3:0]sa_axi_wstrb;
  input [3:0]sa_axi_wuser;
  input sa_axi_wvalid;
  input [31:0]sb_axi_araddr;
  input [1:0]sb_axi_arburst;
  input [3:0]sb_axi_arcache;
  input [11:0]sb_axi_arid;
  input [7:0]sb_axi_arlen;
  input [0:0]sb_axi_arlock;
  input [2:0]sb_axi_arprot;
  input [3:0]sb_axi_arqos;
  output [0:0]sb_axi_arready;
  input [3:0]sb_axi_arregion;
  input [2:0]sb_axi_arsize;
  input [3:0]sb_axi_aruser;
  input [0:0]sb_axi_arvalid;
  input [31:0]sb_axi_awaddr;
  input [1:0]sb_axi_awburst;
  input [3:0]sb_axi_awcache;
  input [11:0]sb_axi_awid;
  input [7:0]sb_axi_awlen;
  input [0:0]sb_axi_awlock;
  input [2:0]sb_axi_awprot;
  input [3:0]sb_axi_awqos;
  output [0:0]sb_axi_awready;
  input [3:0]sb_axi_awregion;
  input [2:0]sb_axi_awsize;
  input [3:0]sb_axi_awuser;
  input [0:0]sb_axi_awvalid;
  output [11:0]sb_axi_bid;
  input [0:0]sb_axi_bready;
  output [1:0]sb_axi_bresp;
  output [3:0]sb_axi_buser;
  output [0:0]sb_axi_bvalid;
  output [31:0]sb_axi_rdata;
  output [11:0]sb_axi_rid;
  output [0:0]sb_axi_rlast;
  input [0:0]sb_axi_rready;
  output [1:0]sb_axi_rresp;
  output [3:0]sb_axi_ruser;
  output [0:0]sb_axi_rvalid;
  input [31:0]sb_axi_wdata;
  input [0:0]sb_axi_wlast;
  output [0:0]sb_axi_wready;
  input [3:0]sb_axi_wstrb;
  input [3:0]sb_axi_wuser;
  input [0:0]sb_axi_wvalid;

  wire [31:0]Conn1_ARADDR;
  wire [1:0]Conn1_ARBURST;
  wire [3:0]Conn1_ARCACHE;
  wire [11:0]Conn1_ARID;
  wire [7:0]Conn1_ARLEN;
  wire [0:0]Conn1_ARLOCK;
  wire [2:0]Conn1_ARPROT;
  wire [3:0]Conn1_ARQOS;
  wire Conn1_ARREADY;
  wire [3:0]Conn1_ARREGION;
  wire [2:0]Conn1_ARSIZE;
  wire [3:0]Conn1_ARUSER;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire [1:0]Conn1_AWBURST;
  wire [3:0]Conn1_AWCACHE;
  wire [11:0]Conn1_AWID;
  wire [7:0]Conn1_AWLEN;
  wire [0:0]Conn1_AWLOCK;
  wire [2:0]Conn1_AWPROT;
  wire [3:0]Conn1_AWQOS;
  wire Conn1_AWREADY;
  wire [3:0]Conn1_AWREGION;
  wire [2:0]Conn1_AWSIZE;
  wire [3:0]Conn1_AWUSER;
  wire Conn1_AWVALID;
  wire [11:0]Conn1_BID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire [3:0]Conn1_BUSER;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire [11:0]Conn1_RID;
  wire Conn1_RLAST;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire [3:0]Conn1_RUSER;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WLAST;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire [3:0]Conn1_WUSER;
  wire Conn1_WVALID;
  wire [31:0]Conn2_ARADDR;
  wire [1:0]Conn2_ARBURST;
  wire [3:0]Conn2_ARCACHE;
  wire [11:0]Conn2_ARID;
  wire [7:0]Conn2_ARLEN;
  wire [0:0]Conn2_ARLOCK;
  wire [2:0]Conn2_ARPROT;
  wire [3:0]Conn2_ARQOS;
  wire Conn2_ARREADY;
  wire [3:0]Conn2_ARREGION;
  wire [2:0]Conn2_ARSIZE;
  wire [3:0]Conn2_ARUSER;
  wire [0:0]Conn2_ARVALID;
  wire [31:0]Conn2_AWADDR;
  wire [1:0]Conn2_AWBURST;
  wire [3:0]Conn2_AWCACHE;
  wire [11:0]Conn2_AWID;
  wire [7:0]Conn2_AWLEN;
  wire [0:0]Conn2_AWLOCK;
  wire [2:0]Conn2_AWPROT;
  wire [3:0]Conn2_AWQOS;
  wire Conn2_AWREADY;
  wire [3:0]Conn2_AWREGION;
  wire [2:0]Conn2_AWSIZE;
  wire [3:0]Conn2_AWUSER;
  wire [0:0]Conn2_AWVALID;
  wire [11:0]Conn2_BID;
  wire [0:0]Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire [3:0]Conn2_BUSER;
  wire Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire [11:0]Conn2_RID;
  wire Conn2_RLAST;
  wire [0:0]Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire [3:0]Conn2_RUSER;
  wire Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire [0:0]Conn2_WLAST;
  wire Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire [3:0]Conn2_WUSER;
  wire [0:0]Conn2_WVALID;
  wire axi_aclk_1;
  wire axi_aresetn_1;
  wire [31:0]blk_itcm_douta;
  wire [31:0]blk_itcm_doutb;
  wire [31:0]ram_axi2_wallpaper_0_addra;
  wire [31:0]ram_axi2_wallpaper_0_addrb;
  wire [31:0]ram_axi2_wallpaper_0_douta;
  wire [31:0]ram_axi2_wallpaper_0_doutb;
  wire ram_axi2_wallpaper_0_ena;
  wire ram_axi2_wallpaper_0_enb;
  wire [3:0]ram_axi2_wallpaper_0_wea;
  wire [3:0]ram_axi2_wallpaper_0_web;

  assign Conn1_ARADDR = sa_axi_araddr[31:0];
  assign Conn1_ARBURST = sa_axi_arburst[1:0];
  assign Conn1_ARCACHE = sa_axi_arcache[3:0];
  assign Conn1_ARID = sa_axi_arid[11:0];
  assign Conn1_ARLEN = sa_axi_arlen[7:0];
  assign Conn1_ARLOCK = sa_axi_arlock[0];
  assign Conn1_ARPROT = sa_axi_arprot[2:0];
  assign Conn1_ARQOS = sa_axi_arqos[3:0];
  assign Conn1_ARREGION = sa_axi_arregion[3:0];
  assign Conn1_ARSIZE = sa_axi_arsize[2:0];
  assign Conn1_ARUSER = sa_axi_aruser[3:0];
  assign Conn1_ARVALID = sa_axi_arvalid;
  assign Conn1_AWADDR = sa_axi_awaddr[31:0];
  assign Conn1_AWBURST = sa_axi_awburst[1:0];
  assign Conn1_AWCACHE = sa_axi_awcache[3:0];
  assign Conn1_AWID = sa_axi_awid[11:0];
  assign Conn1_AWLEN = sa_axi_awlen[7:0];
  assign Conn1_AWLOCK = sa_axi_awlock[0];
  assign Conn1_AWPROT = sa_axi_awprot[2:0];
  assign Conn1_AWQOS = sa_axi_awqos[3:0];
  assign Conn1_AWREGION = sa_axi_awregion[3:0];
  assign Conn1_AWSIZE = sa_axi_awsize[2:0];
  assign Conn1_AWUSER = sa_axi_awuser[3:0];
  assign Conn1_AWVALID = sa_axi_awvalid;
  assign Conn1_BREADY = sa_axi_bready;
  assign Conn1_RREADY = sa_axi_rready;
  assign Conn1_WDATA = sa_axi_wdata[31:0];
  assign Conn1_WLAST = sa_axi_wlast;
  assign Conn1_WSTRB = sa_axi_wstrb[3:0];
  assign Conn1_WUSER = sa_axi_wuser[3:0];
  assign Conn1_WVALID = sa_axi_wvalid;
  assign Conn2_ARADDR = sb_axi_araddr[31:0];
  assign Conn2_ARBURST = sb_axi_arburst[1:0];
  assign Conn2_ARCACHE = sb_axi_arcache[3:0];
  assign Conn2_ARID = sb_axi_arid[11:0];
  assign Conn2_ARLEN = sb_axi_arlen[7:0];
  assign Conn2_ARLOCK = sb_axi_arlock[0];
  assign Conn2_ARPROT = sb_axi_arprot[2:0];
  assign Conn2_ARQOS = sb_axi_arqos[3:0];
  assign Conn2_ARREGION = sb_axi_arregion[3:0];
  assign Conn2_ARSIZE = sb_axi_arsize[2:0];
  assign Conn2_ARUSER = sb_axi_aruser[3:0];
  assign Conn2_ARVALID = sb_axi_arvalid[0];
  assign Conn2_AWADDR = sb_axi_awaddr[31:0];
  assign Conn2_AWBURST = sb_axi_awburst[1:0];
  assign Conn2_AWCACHE = sb_axi_awcache[3:0];
  assign Conn2_AWID = sb_axi_awid[11:0];
  assign Conn2_AWLEN = sb_axi_awlen[7:0];
  assign Conn2_AWLOCK = sb_axi_awlock[0];
  assign Conn2_AWPROT = sb_axi_awprot[2:0];
  assign Conn2_AWQOS = sb_axi_awqos[3:0];
  assign Conn2_AWREGION = sb_axi_awregion[3:0];
  assign Conn2_AWSIZE = sb_axi_awsize[2:0];
  assign Conn2_AWUSER = sb_axi_awuser[3:0];
  assign Conn2_AWVALID = sb_axi_awvalid[0];
  assign Conn2_BREADY = sb_axi_bready[0];
  assign Conn2_RREADY = sb_axi_rready[0];
  assign Conn2_WDATA = sb_axi_wdata[31:0];
  assign Conn2_WLAST = sb_axi_wlast[0];
  assign Conn2_WSTRB = sb_axi_wstrb[3:0];
  assign Conn2_WUSER = sb_axi_wuser[3:0];
  assign Conn2_WVALID = sb_axi_wvalid[0];
  assign axi_aclk_1 = axi_aclk;
  assign axi_aresetn_1 = axi_aresetn;
  assign sa_axi_arready = Conn1_ARREADY;
  assign sa_axi_awready = Conn1_AWREADY;
  assign sa_axi_bid[11:0] = Conn1_BID;
  assign sa_axi_bresp[1:0] = Conn1_BRESP;
  assign sa_axi_buser[3:0] = Conn1_BUSER;
  assign sa_axi_bvalid = Conn1_BVALID;
  assign sa_axi_rdata[31:0] = Conn1_RDATA;
  assign sa_axi_rid[11:0] = Conn1_RID;
  assign sa_axi_rlast = Conn1_RLAST;
  assign sa_axi_rresp[1:0] = Conn1_RRESP;
  assign sa_axi_ruser[3:0] = Conn1_RUSER;
  assign sa_axi_rvalid = Conn1_RVALID;
  assign sa_axi_wready = Conn1_WREADY;
  assign sb_axi_arready[0] = Conn2_ARREADY;
  assign sb_axi_awready[0] = Conn2_AWREADY;
  assign sb_axi_bid[11:0] = Conn2_BID;
  assign sb_axi_bresp[1:0] = Conn2_BRESP;
  assign sb_axi_buser[3:0] = Conn2_BUSER;
  assign sb_axi_bvalid[0] = Conn2_BVALID;
  assign sb_axi_rdata[31:0] = Conn2_RDATA;
  assign sb_axi_rid[11:0] = Conn2_RID;
  assign sb_axi_rlast[0] = Conn2_RLAST;
  assign sb_axi_rresp[1:0] = Conn2_RRESP;
  assign sb_axi_ruser[3:0] = Conn2_RUSER;
  assign sb_axi_rvalid[0] = Conn2_RVALID;
  assign sb_axi_wready[0] = Conn2_WREADY;
  design_1_blk_mem_gen_0_0 blk_itcm
       (.addra(ram_axi2_wallpaper_0_addra),
        .addrb(ram_axi2_wallpaper_0_addrb),
        .clka(axi_aclk_1),
        .clkb(axi_aclk_1),
        .dina(ram_axi2_wallpaper_0_douta),
        .dinb(ram_axi2_wallpaper_0_doutb),
        .douta(blk_itcm_douta),
        .doutb(blk_itcm_doutb),
        .ena(ram_axi2_wallpaper_0_ena),
        .enb(ram_axi2_wallpaper_0_enb),
        .wea(ram_axi2_wallpaper_0_wea),
        .web(ram_axi2_wallpaper_0_web));
  design_1_ram_axi2_wallpaper_0_0 ram_axi2_wallpaper_0
       (.addra(ram_axi2_wallpaper_0_addra),
        .addrb(ram_axi2_wallpaper_0_addrb),
        .axi_aclk(axi_aclk_1),
        .axi_aresetn(axi_aresetn_1),
        .dina(blk_itcm_douta),
        .dinb(blk_itcm_doutb),
        .douta(ram_axi2_wallpaper_0_douta),
        .doutb(ram_axi2_wallpaper_0_doutb),
        .ena(ram_axi2_wallpaper_0_ena),
        .enb(ram_axi2_wallpaper_0_enb),
        .sa_axi_araddr(Conn1_ARADDR),
        .sa_axi_arburst(Conn1_ARBURST),
        .sa_axi_arcache(Conn1_ARCACHE),
        .sa_axi_arid(Conn1_ARID),
        .sa_axi_arlen(Conn1_ARLEN),
        .sa_axi_arlock(Conn1_ARLOCK),
        .sa_axi_arprot(Conn1_ARPROT),
        .sa_axi_arqos(Conn1_ARQOS),
        .sa_axi_arready(Conn1_ARREADY),
        .sa_axi_arregion(Conn1_ARREGION),
        .sa_axi_arsize(Conn1_ARSIZE),
        .sa_axi_aruser(Conn1_ARUSER),
        .sa_axi_arvalid(Conn1_ARVALID),
        .sa_axi_awaddr(Conn1_AWADDR),
        .sa_axi_awburst(Conn1_AWBURST),
        .sa_axi_awcache(Conn1_AWCACHE),
        .sa_axi_awid(Conn1_AWID),
        .sa_axi_awlen(Conn1_AWLEN),
        .sa_axi_awlock(Conn1_AWLOCK),
        .sa_axi_awprot(Conn1_AWPROT),
        .sa_axi_awqos(Conn1_AWQOS),
        .sa_axi_awready(Conn1_AWREADY),
        .sa_axi_awregion(Conn1_AWREGION),
        .sa_axi_awsize(Conn1_AWSIZE),
        .sa_axi_awuser(Conn1_AWUSER),
        .sa_axi_awvalid(Conn1_AWVALID),
        .sa_axi_bid(Conn1_BID),
        .sa_axi_bready(Conn1_BREADY),
        .sa_axi_bresp(Conn1_BRESP),
        .sa_axi_buser(Conn1_BUSER),
        .sa_axi_bvalid(Conn1_BVALID),
        .sa_axi_rdata(Conn1_RDATA),
        .sa_axi_rid(Conn1_RID),
        .sa_axi_rlast(Conn1_RLAST),
        .sa_axi_rready(Conn1_RREADY),
        .sa_axi_rresp(Conn1_RRESP),
        .sa_axi_ruser(Conn1_RUSER),
        .sa_axi_rvalid(Conn1_RVALID),
        .sa_axi_wdata(Conn1_WDATA),
        .sa_axi_wlast(Conn1_WLAST),
        .sa_axi_wready(Conn1_WREADY),
        .sa_axi_wstrb({1'b1,1'b1,1'b1,1'b1,Conn1_WSTRB}),
        .sa_axi_wuser(Conn1_WUSER),
        .sa_axi_wvalid(Conn1_WVALID),
        .sb_axi_araddr(Conn2_ARADDR),
        .sb_axi_arburst(Conn2_ARBURST),
        .sb_axi_arcache(Conn2_ARCACHE),
        .sb_axi_arid(Conn2_ARID),
        .sb_axi_arlen(Conn2_ARLEN),
        .sb_axi_arlock(Conn2_ARLOCK),
        .sb_axi_arprot(Conn2_ARPROT),
        .sb_axi_arqos(Conn2_ARQOS),
        .sb_axi_arready(Conn2_ARREADY),
        .sb_axi_arregion(Conn2_ARREGION),
        .sb_axi_arsize(Conn2_ARSIZE),
        .sb_axi_aruser(Conn2_ARUSER),
        .sb_axi_arvalid(Conn2_ARVALID),
        .sb_axi_awaddr(Conn2_AWADDR),
        .sb_axi_awburst(Conn2_AWBURST),
        .sb_axi_awcache(Conn2_AWCACHE),
        .sb_axi_awid(Conn2_AWID),
        .sb_axi_awlen(Conn2_AWLEN),
        .sb_axi_awlock(Conn2_AWLOCK),
        .sb_axi_awprot(Conn2_AWPROT),
        .sb_axi_awqos(Conn2_AWQOS),
        .sb_axi_awready(Conn2_AWREADY),
        .sb_axi_awregion(Conn2_AWREGION),
        .sb_axi_awsize(Conn2_AWSIZE),
        .sb_axi_awuser(Conn2_AWUSER),
        .sb_axi_awvalid(Conn2_AWVALID),
        .sb_axi_bid(Conn2_BID),
        .sb_axi_bready(Conn2_BREADY),
        .sb_axi_bresp(Conn2_BRESP),
        .sb_axi_buser(Conn2_BUSER),
        .sb_axi_bvalid(Conn2_BVALID),
        .sb_axi_rdata(Conn2_RDATA),
        .sb_axi_rid(Conn2_RID),
        .sb_axi_rlast(Conn2_RLAST),
        .sb_axi_rready(Conn2_RREADY),
        .sb_axi_rresp(Conn2_RRESP),
        .sb_axi_ruser(Conn2_RUSER),
        .sb_axi_rvalid(Conn2_RVALID),
        .sb_axi_wdata(Conn2_WDATA),
        .sb_axi_wlast(Conn2_WLAST),
        .sb_axi_wready(Conn2_WREADY),
        .sb_axi_wstrb({1'b1,1'b1,1'b1,1'b1,Conn2_WSTRB}),
        .sb_axi_wuser(Conn2_WUSER),
        .sb_axi_wvalid(Conn2_WVALID),
        .wea(ram_axi2_wallpaper_0_wea),
        .web(ram_axi2_wallpaper_0_web));
endmodule

module m00_couplers_imp_QWE1FZ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_buser,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_ruser,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wuser,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_buser,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_ruser,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wuser,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [11:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output [3:0]M_AXI_aruser;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [11:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output [3:0]M_AXI_awuser;
  output [0:0]M_AXI_awvalid;
  input [11:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [3:0]M_AXI_buser;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [11:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [3:0]M_AXI_ruser;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [3:0]M_AXI_wuser;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [3:0]S_AXI_aruser;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [3:0]S_AXI_awuser;
  input [0:0]S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [3:0]S_AXI_buser;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [3:0]S_AXI_ruser;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [3:0]S_AXI_wuser;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [1:0]m00_couplers_to_m00_couplers_ARBURST;
  wire [3:0]m00_couplers_to_m00_couplers_ARCACHE;
  wire [11:0]m00_couplers_to_m00_couplers_ARID;
  wire [7:0]m00_couplers_to_m00_couplers_ARLEN;
  wire [0:0]m00_couplers_to_m00_couplers_ARLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [3:0]m00_couplers_to_m00_couplers_ARQOS;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [3:0]m00_couplers_to_m00_couplers_ARREGION;
  wire [2:0]m00_couplers_to_m00_couplers_ARSIZE;
  wire [3:0]m00_couplers_to_m00_couplers_ARUSER;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [1:0]m00_couplers_to_m00_couplers_AWBURST;
  wire [3:0]m00_couplers_to_m00_couplers_AWCACHE;
  wire [11:0]m00_couplers_to_m00_couplers_AWID;
  wire [7:0]m00_couplers_to_m00_couplers_AWLEN;
  wire [0:0]m00_couplers_to_m00_couplers_AWLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [3:0]m00_couplers_to_m00_couplers_AWQOS;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [3:0]m00_couplers_to_m00_couplers_AWREGION;
  wire [2:0]m00_couplers_to_m00_couplers_AWSIZE;
  wire [3:0]m00_couplers_to_m00_couplers_AWUSER;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [11:0]m00_couplers_to_m00_couplers_BID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [3:0]m00_couplers_to_m00_couplers_BUSER;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [11:0]m00_couplers_to_m00_couplers_RID;
  wire [0:0]m00_couplers_to_m00_couplers_RLAST;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [3:0]m00_couplers_to_m00_couplers_RUSER;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WLAST;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [3:0]m00_couplers_to_m00_couplers_WUSER;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[11:0] = m00_couplers_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = m00_couplers_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_couplers_to_m00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = m00_couplers_to_m00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_aruser[3:0] = m00_couplers_to_m00_couplers_ARUSER;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[11:0] = m00_couplers_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = m00_couplers_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_couplers_to_m00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = m00_couplers_to_m00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awuser[3:0] = m00_couplers_to_m00_couplers_AWUSER;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast[0] = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wuser[3:0] = m00_couplers_to_m00_couplers_WUSER;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bid[11:0] = m00_couplers_to_m00_couplers_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_buser[3:0] = m00_couplers_to_m00_couplers_BUSER;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rid[11:0] = m00_couplers_to_m00_couplers_RID;
  assign S_AXI_rlast[0] = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_ruser[3:0] = m00_couplers_to_m00_couplers_RUSER;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_couplers_ARID = S_AXI_arid[11:0];
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_couplers_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_couplers_ARUSER = S_AXI_aruser[3:0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_couplers_AWID = S_AXI_awid[11:0];
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_couplers_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_couplers_AWUSER = S_AXI_awuser[3:0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BID = M_AXI_bid[11:0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BUSER = M_AXI_buser[3:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RID = M_AXI_rid[11:0];
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast[0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RUSER = M_AXI_ruser[3:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast[0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WUSER = S_AXI_wuser[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_13UNAR2
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [11:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [11:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [11:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [11:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [1:0]m01_couplers_to_m01_couplers_ARBURST;
  wire [3:0]m01_couplers_to_m01_couplers_ARCACHE;
  wire [11:0]m01_couplers_to_m01_couplers_ARID;
  wire [7:0]m01_couplers_to_m01_couplers_ARLEN;
  wire [0:0]m01_couplers_to_m01_couplers_ARLOCK;
  wire [2:0]m01_couplers_to_m01_couplers_ARPROT;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [2:0]m01_couplers_to_m01_couplers_ARSIZE;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [1:0]m01_couplers_to_m01_couplers_AWBURST;
  wire [3:0]m01_couplers_to_m01_couplers_AWCACHE;
  wire [11:0]m01_couplers_to_m01_couplers_AWID;
  wire [7:0]m01_couplers_to_m01_couplers_AWLEN;
  wire [0:0]m01_couplers_to_m01_couplers_AWLOCK;
  wire [2:0]m01_couplers_to_m01_couplers_AWPROT;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [2:0]m01_couplers_to_m01_couplers_AWSIZE;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [11:0]m01_couplers_to_m01_couplers_BID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [11:0]m01_couplers_to_m01_couplers_RID;
  wire [0:0]m01_couplers_to_m01_couplers_RLAST;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WLAST;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m01_couplers_to_m01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m01_couplers_to_m01_couplers_ARCACHE;
  assign M_AXI_arid[11:0] = m01_couplers_to_m01_couplers_ARID;
  assign M_AXI_arlen[7:0] = m01_couplers_to_m01_couplers_ARLEN;
  assign M_AXI_arlock[0] = m01_couplers_to_m01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m01_couplers_to_m01_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m01_couplers_to_m01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m01_couplers_to_m01_couplers_AWCACHE;
  assign M_AXI_awid[11:0] = m01_couplers_to_m01_couplers_AWID;
  assign M_AXI_awlen[7:0] = m01_couplers_to_m01_couplers_AWLEN;
  assign M_AXI_awlock[0] = m01_couplers_to_m01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m01_couplers_to_m01_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wlast[0] = m01_couplers_to_m01_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bid[11:0] = m01_couplers_to_m01_couplers_BID;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rid[11:0] = m01_couplers_to_m01_couplers_RID;
  assign S_AXI_rlast[0] = m01_couplers_to_m01_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_m01_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_m01_couplers_ARID = S_AXI_arid[11:0];
  assign m01_couplers_to_m01_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_m01_couplers_ARLOCK = S_AXI_arlock[0];
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_m01_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_m01_couplers_AWID = S_AXI_awid[11:0];
  assign m01_couplers_to_m01_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_m01_couplers_AWLOCK = S_AXI_awlock[0];
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BID = M_AXI_bid[11:0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RID = M_AXI_rid[11:0];
  assign m01_couplers_to_m01_couplers_RLAST = M_AXI_rlast[0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WLAST = S_AXI_wlast[0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_S2DBGS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m02_couplers_ARADDR;
  wire auto_pc_to_m02_couplers_ARREADY;
  wire auto_pc_to_m02_couplers_ARVALID;
  wire [31:0]auto_pc_to_m02_couplers_AWADDR;
  wire auto_pc_to_m02_couplers_AWREADY;
  wire auto_pc_to_m02_couplers_AWVALID;
  wire auto_pc_to_m02_couplers_BREADY;
  wire [1:0]auto_pc_to_m02_couplers_BRESP;
  wire auto_pc_to_m02_couplers_BVALID;
  wire [31:0]auto_pc_to_m02_couplers_RDATA;
  wire auto_pc_to_m02_couplers_RREADY;
  wire [1:0]auto_pc_to_m02_couplers_RRESP;
  wire auto_pc_to_m02_couplers_RVALID;
  wire [31:0]auto_pc_to_m02_couplers_WDATA;
  wire auto_pc_to_m02_couplers_WREADY;
  wire [3:0]auto_pc_to_m02_couplers_WSTRB;
  wire auto_pc_to_m02_couplers_WVALID;
  wire [31:0]m02_couplers_to_auto_pc_ARADDR;
  wire [1:0]m02_couplers_to_auto_pc_ARBURST;
  wire [3:0]m02_couplers_to_auto_pc_ARCACHE;
  wire [11:0]m02_couplers_to_auto_pc_ARID;
  wire [7:0]m02_couplers_to_auto_pc_ARLEN;
  wire [0:0]m02_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m02_couplers_to_auto_pc_ARPROT;
  wire [3:0]m02_couplers_to_auto_pc_ARQOS;
  wire m02_couplers_to_auto_pc_ARREADY;
  wire [3:0]m02_couplers_to_auto_pc_ARREGION;
  wire [2:0]m02_couplers_to_auto_pc_ARSIZE;
  wire m02_couplers_to_auto_pc_ARVALID;
  wire [31:0]m02_couplers_to_auto_pc_AWADDR;
  wire [1:0]m02_couplers_to_auto_pc_AWBURST;
  wire [3:0]m02_couplers_to_auto_pc_AWCACHE;
  wire [11:0]m02_couplers_to_auto_pc_AWID;
  wire [7:0]m02_couplers_to_auto_pc_AWLEN;
  wire [0:0]m02_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m02_couplers_to_auto_pc_AWPROT;
  wire [3:0]m02_couplers_to_auto_pc_AWQOS;
  wire m02_couplers_to_auto_pc_AWREADY;
  wire [3:0]m02_couplers_to_auto_pc_AWREGION;
  wire [2:0]m02_couplers_to_auto_pc_AWSIZE;
  wire m02_couplers_to_auto_pc_AWVALID;
  wire [11:0]m02_couplers_to_auto_pc_BID;
  wire m02_couplers_to_auto_pc_BREADY;
  wire [1:0]m02_couplers_to_auto_pc_BRESP;
  wire m02_couplers_to_auto_pc_BVALID;
  wire [31:0]m02_couplers_to_auto_pc_RDATA;
  wire [11:0]m02_couplers_to_auto_pc_RID;
  wire m02_couplers_to_auto_pc_RLAST;
  wire m02_couplers_to_auto_pc_RREADY;
  wire [1:0]m02_couplers_to_auto_pc_RRESP;
  wire m02_couplers_to_auto_pc_RVALID;
  wire [31:0]m02_couplers_to_auto_pc_WDATA;
  wire m02_couplers_to_auto_pc_WLAST;
  wire m02_couplers_to_auto_pc_WREADY;
  wire [3:0]m02_couplers_to_auto_pc_WSTRB;
  wire m02_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m02_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m02_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = m02_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = m02_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m02_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m02_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m02_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m02_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m02_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign m02_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m02_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m02_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m02_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m02_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m02_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m02_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m02_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign m02_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m02_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m02_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m02_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m02_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m02_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m02_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m02_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m02_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m02_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m02_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m02_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m02_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m02_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m02_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m02_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m02_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m02_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m02_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m02_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m02_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m02_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m02_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m02_couplers_WVALID),
        .s_axi_araddr(m02_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m02_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m02_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m02_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m02_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m02_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m02_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m02_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m02_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m02_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m02_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m02_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m02_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m02_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m02_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m02_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m02_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m02_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m02_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m02_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m02_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m02_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m02_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m02_couplers_to_auto_pc_BID),
        .s_axi_bready(m02_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m02_couplers_to_auto_pc_RID),
        .s_axi_rlast(m02_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m02_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m02_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m02_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_pc_WVALID));
endmodule

module m03_couplers_imp_12EZ25P
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m03_couplers_ARADDR;
  wire auto_pc_to_m03_couplers_ARREADY;
  wire auto_pc_to_m03_couplers_ARVALID;
  wire [31:0]auto_pc_to_m03_couplers_AWADDR;
  wire auto_pc_to_m03_couplers_AWREADY;
  wire auto_pc_to_m03_couplers_AWVALID;
  wire auto_pc_to_m03_couplers_BREADY;
  wire [1:0]auto_pc_to_m03_couplers_BRESP;
  wire auto_pc_to_m03_couplers_BVALID;
  wire [31:0]auto_pc_to_m03_couplers_RDATA;
  wire auto_pc_to_m03_couplers_RREADY;
  wire [1:0]auto_pc_to_m03_couplers_RRESP;
  wire auto_pc_to_m03_couplers_RVALID;
  wire [31:0]auto_pc_to_m03_couplers_WDATA;
  wire auto_pc_to_m03_couplers_WREADY;
  wire [3:0]auto_pc_to_m03_couplers_WSTRB;
  wire auto_pc_to_m03_couplers_WVALID;
  wire [31:0]m03_couplers_to_auto_pc_ARADDR;
  wire [1:0]m03_couplers_to_auto_pc_ARBURST;
  wire [3:0]m03_couplers_to_auto_pc_ARCACHE;
  wire [11:0]m03_couplers_to_auto_pc_ARID;
  wire [7:0]m03_couplers_to_auto_pc_ARLEN;
  wire [0:0]m03_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m03_couplers_to_auto_pc_ARPROT;
  wire [3:0]m03_couplers_to_auto_pc_ARQOS;
  wire m03_couplers_to_auto_pc_ARREADY;
  wire [3:0]m03_couplers_to_auto_pc_ARREGION;
  wire [2:0]m03_couplers_to_auto_pc_ARSIZE;
  wire m03_couplers_to_auto_pc_ARVALID;
  wire [31:0]m03_couplers_to_auto_pc_AWADDR;
  wire [1:0]m03_couplers_to_auto_pc_AWBURST;
  wire [3:0]m03_couplers_to_auto_pc_AWCACHE;
  wire [11:0]m03_couplers_to_auto_pc_AWID;
  wire [7:0]m03_couplers_to_auto_pc_AWLEN;
  wire [0:0]m03_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m03_couplers_to_auto_pc_AWPROT;
  wire [3:0]m03_couplers_to_auto_pc_AWQOS;
  wire m03_couplers_to_auto_pc_AWREADY;
  wire [3:0]m03_couplers_to_auto_pc_AWREGION;
  wire [2:0]m03_couplers_to_auto_pc_AWSIZE;
  wire m03_couplers_to_auto_pc_AWVALID;
  wire [11:0]m03_couplers_to_auto_pc_BID;
  wire m03_couplers_to_auto_pc_BREADY;
  wire [1:0]m03_couplers_to_auto_pc_BRESP;
  wire m03_couplers_to_auto_pc_BVALID;
  wire [31:0]m03_couplers_to_auto_pc_RDATA;
  wire [11:0]m03_couplers_to_auto_pc_RID;
  wire m03_couplers_to_auto_pc_RLAST;
  wire m03_couplers_to_auto_pc_RREADY;
  wire [1:0]m03_couplers_to_auto_pc_RRESP;
  wire m03_couplers_to_auto_pc_RVALID;
  wire [31:0]m03_couplers_to_auto_pc_WDATA;
  wire m03_couplers_to_auto_pc_WLAST;
  wire m03_couplers_to_auto_pc_WREADY;
  wire [3:0]m03_couplers_to_auto_pc_WSTRB;
  wire m03_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m03_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m03_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = m03_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = m03_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m03_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m03_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m03_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m03_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m03_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign m03_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m03_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m03_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m03_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m03_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m03_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m03_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m03_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign m03_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m03_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m03_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m03_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m03_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m03_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m03_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m03_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m03_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m03_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m03_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m03_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m03_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m03_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m03_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m03_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m03_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m03_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m03_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m03_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m03_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m03_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m03_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m03_couplers_WVALID),
        .s_axi_araddr(m03_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m03_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m03_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m03_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m03_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m03_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m03_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m03_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m03_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m03_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m03_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m03_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m03_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m03_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m03_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m03_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m03_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m03_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m03_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m03_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m03_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m03_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m03_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m03_couplers_to_auto_pc_BID),
        .s_axi_bready(m03_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m03_couplers_to_auto_pc_RID),
        .s_axi_rlast(m03_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m03_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m03_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m03_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_pc_WVALID));
endmodule

module m04_couplers_imp_TSB2KP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m04_couplers_ARADDR;
  wire auto_pc_to_m04_couplers_ARREADY;
  wire auto_pc_to_m04_couplers_ARVALID;
  wire [31:0]auto_pc_to_m04_couplers_AWADDR;
  wire auto_pc_to_m04_couplers_AWREADY;
  wire auto_pc_to_m04_couplers_AWVALID;
  wire auto_pc_to_m04_couplers_BREADY;
  wire [1:0]auto_pc_to_m04_couplers_BRESP;
  wire auto_pc_to_m04_couplers_BVALID;
  wire [31:0]auto_pc_to_m04_couplers_RDATA;
  wire auto_pc_to_m04_couplers_RREADY;
  wire [1:0]auto_pc_to_m04_couplers_RRESP;
  wire auto_pc_to_m04_couplers_RVALID;
  wire [31:0]auto_pc_to_m04_couplers_WDATA;
  wire auto_pc_to_m04_couplers_WREADY;
  wire [3:0]auto_pc_to_m04_couplers_WSTRB;
  wire auto_pc_to_m04_couplers_WVALID;
  wire [31:0]m04_couplers_to_auto_pc_ARADDR;
  wire [1:0]m04_couplers_to_auto_pc_ARBURST;
  wire [3:0]m04_couplers_to_auto_pc_ARCACHE;
  wire [11:0]m04_couplers_to_auto_pc_ARID;
  wire [7:0]m04_couplers_to_auto_pc_ARLEN;
  wire [0:0]m04_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m04_couplers_to_auto_pc_ARPROT;
  wire [3:0]m04_couplers_to_auto_pc_ARQOS;
  wire m04_couplers_to_auto_pc_ARREADY;
  wire [3:0]m04_couplers_to_auto_pc_ARREGION;
  wire [2:0]m04_couplers_to_auto_pc_ARSIZE;
  wire m04_couplers_to_auto_pc_ARVALID;
  wire [31:0]m04_couplers_to_auto_pc_AWADDR;
  wire [1:0]m04_couplers_to_auto_pc_AWBURST;
  wire [3:0]m04_couplers_to_auto_pc_AWCACHE;
  wire [11:0]m04_couplers_to_auto_pc_AWID;
  wire [7:0]m04_couplers_to_auto_pc_AWLEN;
  wire [0:0]m04_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m04_couplers_to_auto_pc_AWPROT;
  wire [3:0]m04_couplers_to_auto_pc_AWQOS;
  wire m04_couplers_to_auto_pc_AWREADY;
  wire [3:0]m04_couplers_to_auto_pc_AWREGION;
  wire [2:0]m04_couplers_to_auto_pc_AWSIZE;
  wire m04_couplers_to_auto_pc_AWVALID;
  wire [11:0]m04_couplers_to_auto_pc_BID;
  wire m04_couplers_to_auto_pc_BREADY;
  wire [1:0]m04_couplers_to_auto_pc_BRESP;
  wire m04_couplers_to_auto_pc_BVALID;
  wire [31:0]m04_couplers_to_auto_pc_RDATA;
  wire [11:0]m04_couplers_to_auto_pc_RID;
  wire m04_couplers_to_auto_pc_RLAST;
  wire m04_couplers_to_auto_pc_RREADY;
  wire [1:0]m04_couplers_to_auto_pc_RRESP;
  wire m04_couplers_to_auto_pc_RVALID;
  wire [31:0]m04_couplers_to_auto_pc_WDATA;
  wire m04_couplers_to_auto_pc_WLAST;
  wire m04_couplers_to_auto_pc_WREADY;
  wire [3:0]m04_couplers_to_auto_pc_WSTRB;
  wire m04_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m04_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m04_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m04_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m04_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m04_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = m04_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m04_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = m04_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m04_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m04_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m04_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m04_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m04_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m04_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m04_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign m04_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m04_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m04_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m04_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m04_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m04_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m04_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m04_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign m04_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m04_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m04_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m04_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m04_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m04_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m04_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m04_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m04_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m04_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m04_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m04_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m04_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m04_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m04_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m04_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m04_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m04_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m04_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m04_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m04_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m04_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m04_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m04_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m04_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m04_couplers_WVALID),
        .s_axi_araddr(m04_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m04_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m04_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m04_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m04_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m04_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m04_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m04_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m04_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m04_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m04_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m04_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m04_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m04_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m04_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m04_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m04_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m04_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m04_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m04_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m04_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m04_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m04_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m04_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m04_couplers_to_auto_pc_BID),
        .s_axi_bready(m04_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m04_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m04_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m04_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m04_couplers_to_auto_pc_RID),
        .s_axi_rlast(m04_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m04_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m04_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m04_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m04_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m04_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m04_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m04_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m04_couplers_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_16O8N0T
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_buser,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_ruser,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wuser,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_buser,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_ruser,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wuser,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [11:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [3:0]M_AXI_aruser;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [11:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [3:0]M_AXI_awuser;
  output [0:0]M_AXI_awvalid;
  input [11:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [3:0]M_AXI_buser;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [11:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [3:0]M_AXI_ruser;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [3:0]M_AXI_wuser;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [3:0]S_AXI_aruser;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [3:0]S_AXI_awuser;
  input [0:0]S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [3:0]S_AXI_buser;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [3:0]S_AXI_ruser;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [3:0]S_AXI_wuser;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [11:0]s00_couplers_to_s00_couplers_ARID;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire [0:0]s00_couplers_to_s00_couplers_ARLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [3:0]s00_couplers_to_s00_couplers_ARQOS;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [2:0]s00_couplers_to_s00_couplers_ARSIZE;
  wire [3:0]s00_couplers_to_s00_couplers_ARUSER;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [1:0]s00_couplers_to_s00_couplers_AWBURST;
  wire [3:0]s00_couplers_to_s00_couplers_AWCACHE;
  wire [11:0]s00_couplers_to_s00_couplers_AWID;
  wire [7:0]s00_couplers_to_s00_couplers_AWLEN;
  wire [0:0]s00_couplers_to_s00_couplers_AWLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [3:0]s00_couplers_to_s00_couplers_AWQOS;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [2:0]s00_couplers_to_s00_couplers_AWSIZE;
  wire [3:0]s00_couplers_to_s00_couplers_AWUSER;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [11:0]s00_couplers_to_s00_couplers_BID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [3:0]s00_couplers_to_s00_couplers_BUSER;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [11:0]s00_couplers_to_s00_couplers_RID;
  wire [0:0]s00_couplers_to_s00_couplers_RLAST;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [3:0]s00_couplers_to_s00_couplers_RUSER;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WLAST;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [3:0]s00_couplers_to_s00_couplers_WUSER;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[11:0] = s00_couplers_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_couplers_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_couplers_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_aruser[3:0] = s00_couplers_to_s00_couplers_ARUSER;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_couplers_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_couplers_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[11:0] = s00_couplers_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_couplers_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_couplers_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_couplers_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_couplers_to_s00_couplers_AWSIZE;
  assign M_AXI_awuser[3:0] = s00_couplers_to_s00_couplers_AWUSER;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wlast[0] = s00_couplers_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wuser[3:0] = s00_couplers_to_s00_couplers_WUSER;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_s00_couplers_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_buser[3:0] = s00_couplers_to_s00_couplers_BUSER;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_s00_couplers_RID;
  assign S_AXI_rlast[0] = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_ruser[3:0] = s00_couplers_to_s00_couplers_RUSER;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_couplers_ARUSER = S_AXI_aruser[3:0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_couplers_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_s00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_couplers_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_couplers_AWUSER = S_AXI_awuser[3:0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BID = M_AXI_bid[11:0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BUSER = M_AXI_buser[3:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RID = M_AXI_rid[11:0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast[0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RUSER = M_AXI_ruser[3:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WLAST = S_AXI_wlast[0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WUSER = S_AXI_wuser[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_4XAA1H
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_buser,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_ruser,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wuser,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_buser,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_ruser,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wuser,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [11:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output [3:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [11:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output [3:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [11:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [3:0]M_AXI_buser;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [11:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [3:0]M_AXI_ruser;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [3:0]M_AXI_wuser;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [3:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [3:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [3:0]S_AXI_buser;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [3:0]S_AXI_ruser;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [3:0]S_AXI_wuser;
  input S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [11:0]s00_couplers_to_s00_couplers_ARID;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire [0:0]s00_couplers_to_s00_couplers_ARLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [3:0]s00_couplers_to_s00_couplers_ARQOS;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire [3:0]s00_couplers_to_s00_couplers_ARREGION;
  wire [2:0]s00_couplers_to_s00_couplers_ARSIZE;
  wire [3:0]s00_couplers_to_s00_couplers_ARUSER;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [1:0]s00_couplers_to_s00_couplers_AWBURST;
  wire [3:0]s00_couplers_to_s00_couplers_AWCACHE;
  wire [11:0]s00_couplers_to_s00_couplers_AWID;
  wire [7:0]s00_couplers_to_s00_couplers_AWLEN;
  wire [0:0]s00_couplers_to_s00_couplers_AWLOCK;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [3:0]s00_couplers_to_s00_couplers_AWQOS;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire [3:0]s00_couplers_to_s00_couplers_AWREGION;
  wire [2:0]s00_couplers_to_s00_couplers_AWSIZE;
  wire [3:0]s00_couplers_to_s00_couplers_AWUSER;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire [11:0]s00_couplers_to_s00_couplers_BID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [3:0]s00_couplers_to_s00_couplers_BUSER;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [11:0]s00_couplers_to_s00_couplers_RID;
  wire s00_couplers_to_s00_couplers_RLAST;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [3:0]s00_couplers_to_s00_couplers_RUSER;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WLAST;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [3:0]s00_couplers_to_s00_couplers_WUSER;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[11:0] = s00_couplers_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_couplers_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_couplers_to_s00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = s00_couplers_to_s00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_aruser[3:0] = s00_couplers_to_s00_couplers_ARUSER;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_couplers_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_couplers_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[11:0] = s00_couplers_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_couplers_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_couplers_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_couplers_to_s00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = s00_couplers_to_s00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = s00_couplers_to_s00_couplers_AWSIZE;
  assign M_AXI_awuser[3:0] = s00_couplers_to_s00_couplers_AWUSER;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_couplers_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wuser[3:0] = s00_couplers_to_s00_couplers_WUSER;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_s00_couplers_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_buser[3:0] = s00_couplers_to_s00_couplers_BUSER;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_s00_couplers_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_ruser[3:0] = s00_couplers_to_s00_couplers_RUSER;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_couplers_ARUSER = S_AXI_aruser[3:0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_couplers_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_s00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_couplers_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_couplers_AWUSER = S_AXI_awuser[3:0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BID = M_AXI_bid[11:0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BUSER = M_AXI_buser[3:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RID = M_AXI_rid[11:0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RUSER = M_AXI_ruser[3:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WUSER = S_AXI_wuser[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule
