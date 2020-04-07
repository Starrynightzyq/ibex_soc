// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:ram_axi2_wallpaper:1.0
// IP Revision: 1

(* X_CORE_INFO = "ram_axi2_wallpaper,Vivado 2017.4" *)
(* CHECK_LICENSE_TYPE = "design_1_ram_axi2_wallpaper_0_0,ram_axi2_wallpaper,{}" *)
(* CORE_GENERATION_INFO = "design_1_ram_axi2_wallpaper_0_0,ram_axi2_wallpaper,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ram_axi2_wallpaper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,AXI_ADDR_WIDTH=32,AXI_DATA_WIDTH=32,AXI_ID_WIDTH=12,AXI_USER_WIDTH=4,AXI_STRB_WIDTH=8}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_ram_axi2_wallpaper_0_0 (
  axi_aclk,
  axi_aresetn,
  sa_axi_awid,
  sa_axi_awaddr,
  sa_axi_awlen,
  sa_axi_awsize,
  sa_axi_awburst,
  sa_axi_awlock,
  sa_axi_awcache,
  sa_axi_awprot,
  sa_axi_awregion,
  sa_axi_awqos,
  sa_axi_awuser,
  sa_axi_awvalid,
  sa_axi_awready,
  sa_axi_wdata,
  sa_axi_wstrb,
  sa_axi_wlast,
  sa_axi_wuser,
  sa_axi_wvalid,
  sa_axi_wready,
  sa_axi_bid,
  sa_axi_bresp,
  sa_axi_buser,
  sa_axi_bvalid,
  sa_axi_bready,
  sa_axi_arid,
  sa_axi_araddr,
  sa_axi_arlen,
  sa_axi_arsize,
  sa_axi_arburst,
  sa_axi_arlock,
  sa_axi_arcache,
  sa_axi_arprot,
  sa_axi_arregion,
  sa_axi_arqos,
  sa_axi_aruser,
  sa_axi_arvalid,
  sa_axi_arready,
  sa_axi_rid,
  sa_axi_rdata,
  sa_axi_rresp,
  sa_axi_rlast,
  sa_axi_ruser,
  sa_axi_rvalid,
  sa_axi_rready,
  sb_axi_awid,
  sb_axi_awaddr,
  sb_axi_awlen,
  sb_axi_awsize,
  sb_axi_awburst,
  sb_axi_awlock,
  sb_axi_awcache,
  sb_axi_awprot,
  sb_axi_awregion,
  sb_axi_awqos,
  sb_axi_awuser,
  sb_axi_awvalid,
  sb_axi_awready,
  sb_axi_wdata,
  sb_axi_wstrb,
  sb_axi_wlast,
  sb_axi_wuser,
  sb_axi_wvalid,
  sb_axi_wready,
  sb_axi_bid,
  sb_axi_bresp,
  sb_axi_buser,
  sb_axi_bvalid,
  sb_axi_bready,
  sb_axi_arid,
  sb_axi_araddr,
  sb_axi_arlen,
  sb_axi_arsize,
  sb_axi_arburst,
  sb_axi_arlock,
  sb_axi_arcache,
  sb_axi_arprot,
  sb_axi_arregion,
  sb_axi_arqos,
  sb_axi_aruser,
  sb_axi_arvalid,
  sb_axi_arready,
  sb_axi_rid,
  sb_axi_rdata,
  sb_axi_rresp,
  sb_axi_rlast,
  sb_axi_ruser,
  sb_axi_rvalid,
  sb_axi_rready,
  addra,
  douta,
  dina,
  ena,
  wea,
  addrb,
  doutb,
  dinb,
  enb,
  web
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_aclk, ASSOCIATED_BUSIF sa_axi:sb_axi, ASSOCIATED_RESET axi_aresetn, FREQ_HZ 20000000, PHASE 0.0, CLK_DOMAIN /clk_and_rst/clk_wiz_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_aclk CLK" *)
input wire axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi_aresetn RST" *)
input wire axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi AWID" *)
input wire [11 : 0] sa_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi AWADDR" *)
input wire [31 : 0] sa_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi AWLEN" *)
input wire [7 : 0] sa_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi AWSIZE" *)
input wire [2 : 0] sa_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi AWBURST" *)
input wire [1 : 0] sa_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi AWLOCK" *)
input wire [0 : 0] sa_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi AWCACHE" *)
input wire [3 : 0] sa_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi AWPROT" *)
input wire [2 : 0] sa_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi AWREGION" *)
input wire [3 : 0] sa_axi_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi AWQOS" *)
input wire [3 : 0] sa_axi_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi AWUSER" *)
input wire [3 : 0] sa_axi_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi AWVALID" *)
input wire sa_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi AWREADY" *)
output wire sa_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi WDATA" *)
input wire [31 : 0] sa_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi WSTRB" *)
input wire [7 : 0] sa_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi WLAST" *)
input wire sa_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi WUSER" *)
input wire [3 : 0] sa_axi_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi WVALID" *)
input wire sa_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi WREADY" *)
output wire sa_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi BID" *)
output wire [11 : 0] sa_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi BRESP" *)
output wire [1 : 0] sa_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi BUSER" *)
output wire [3 : 0] sa_axi_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi BVALID" *)
output wire sa_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi BREADY" *)
input wire sa_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi ARID" *)
input wire [11 : 0] sa_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi ARADDR" *)
input wire [31 : 0] sa_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi ARLEN" *)
input wire [7 : 0] sa_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi ARSIZE" *)
input wire [2 : 0] sa_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi ARBURST" *)
input wire [1 : 0] sa_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi ARLOCK" *)
input wire [0 : 0] sa_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi ARCACHE" *)
input wire [3 : 0] sa_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi ARPROT" *)
input wire [2 : 0] sa_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi ARREGION" *)
input wire [3 : 0] sa_axi_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi ARQOS" *)
input wire [3 : 0] sa_axi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi ARUSER" *)
input wire [3 : 0] sa_axi_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi ARVALID" *)
input wire sa_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi ARREADY" *)
output wire sa_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi RID" *)
output wire [11 : 0] sa_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi RDATA" *)
output wire [31 : 0] sa_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi RRESP" *)
output wire [1 : 0] sa_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi RLAST" *)
output wire sa_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi RUSER" *)
output wire [3 : 0] sa_axi_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi RVALID" *)
output wire sa_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sa_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 20000000, ID_WIDTH 12, ADDR_WIDTH 32, AWUSER_WIDTH 4, ARUSER_WIDTH 4, WUSER_WIDTH 4, RUSER_WIDTH 4, BUSER_WIDTH 4, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_and_rst/clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sa_axi RREADY" *)
input wire sa_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi AWID" *)
input wire [11 : 0] sb_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi AWADDR" *)
input wire [31 : 0] sb_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi AWLEN" *)
input wire [7 : 0] sb_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi AWSIZE" *)
input wire [2 : 0] sb_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi AWBURST" *)
input wire [1 : 0] sb_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi AWLOCK" *)
input wire [0 : 0] sb_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi AWCACHE" *)
input wire [3 : 0] sb_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi AWPROT" *)
input wire [2 : 0] sb_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi AWREGION" *)
input wire [3 : 0] sb_axi_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi AWQOS" *)
input wire [3 : 0] sb_axi_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi AWUSER" *)
input wire [3 : 0] sb_axi_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi AWVALID" *)
input wire sb_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi AWREADY" *)
output wire sb_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi WDATA" *)
input wire [31 : 0] sb_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi WSTRB" *)
input wire [7 : 0] sb_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi WLAST" *)
input wire sb_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi WUSER" *)
input wire [3 : 0] sb_axi_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi WVALID" *)
input wire sb_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi WREADY" *)
output wire sb_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi BID" *)
output wire [11 : 0] sb_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi BRESP" *)
output wire [1 : 0] sb_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi BUSER" *)
output wire [3 : 0] sb_axi_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi BVALID" *)
output wire sb_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi BREADY" *)
input wire sb_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi ARID" *)
input wire [11 : 0] sb_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi ARADDR" *)
input wire [31 : 0] sb_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi ARLEN" *)
input wire [7 : 0] sb_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi ARSIZE" *)
input wire [2 : 0] sb_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi ARBURST" *)
input wire [1 : 0] sb_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi ARLOCK" *)
input wire [0 : 0] sb_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi ARCACHE" *)
input wire [3 : 0] sb_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi ARPROT" *)
input wire [2 : 0] sb_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi ARREGION" *)
input wire [3 : 0] sb_axi_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi ARQOS" *)
input wire [3 : 0] sb_axi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi ARUSER" *)
input wire [3 : 0] sb_axi_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi ARVALID" *)
input wire sb_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi ARREADY" *)
output wire sb_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi RID" *)
output wire [11 : 0] sb_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi RDATA" *)
output wire [31 : 0] sb_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi RRESP" *)
output wire [1 : 0] sb_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi RLAST" *)
output wire sb_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi RUSER" *)
output wire [3 : 0] sb_axi_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi RVALID" *)
output wire sb_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sb_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 20000000, ID_WIDTH 12, ADDR_WIDTH 32, AWUSER_WIDTH 4, ARUSER_WIDTH 4, WUSER_WIDTH 4, RUSER_WIDTH 4, BUSER_WIDTH 4, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_and_rst/clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 sb_axi RREADY" *)
input wire sb_axi_rready;
output wire [31 : 0] addra;
output wire [31 : 0] douta;
input wire [31 : 0] dina;
output wire ena;
output wire [3 : 0] wea;
output wire [31 : 0] addrb;
output wire [31 : 0] doutb;
input wire [31 : 0] dinb;
output wire enb;
output wire [3 : 0] web;

  ram_axi2_wallpaper #(
    .AXI_ADDR_WIDTH(32),
    .AXI_DATA_WIDTH(32),
    .AXI_ID_WIDTH(12),
    .AXI_USER_WIDTH(4),
    .AXI_STRB_WIDTH(8)
  ) inst (
    .axi_aclk(axi_aclk),
    .axi_aresetn(axi_aresetn),
    .sa_axi_awid(sa_axi_awid),
    .sa_axi_awaddr(sa_axi_awaddr),
    .sa_axi_awlen(sa_axi_awlen),
    .sa_axi_awsize(sa_axi_awsize),
    .sa_axi_awburst(sa_axi_awburst),
    .sa_axi_awlock(sa_axi_awlock),
    .sa_axi_awcache(sa_axi_awcache),
    .sa_axi_awprot(sa_axi_awprot),
    .sa_axi_awregion(sa_axi_awregion),
    .sa_axi_awqos(sa_axi_awqos),
    .sa_axi_awuser(sa_axi_awuser),
    .sa_axi_awvalid(sa_axi_awvalid),
    .sa_axi_awready(sa_axi_awready),
    .sa_axi_wdata(sa_axi_wdata),
    .sa_axi_wstrb(sa_axi_wstrb),
    .sa_axi_wlast(sa_axi_wlast),
    .sa_axi_wuser(sa_axi_wuser),
    .sa_axi_wvalid(sa_axi_wvalid),
    .sa_axi_wready(sa_axi_wready),
    .sa_axi_bid(sa_axi_bid),
    .sa_axi_bresp(sa_axi_bresp),
    .sa_axi_buser(sa_axi_buser),
    .sa_axi_bvalid(sa_axi_bvalid),
    .sa_axi_bready(sa_axi_bready),
    .sa_axi_arid(sa_axi_arid),
    .sa_axi_araddr(sa_axi_araddr),
    .sa_axi_arlen(sa_axi_arlen),
    .sa_axi_arsize(sa_axi_arsize),
    .sa_axi_arburst(sa_axi_arburst),
    .sa_axi_arlock(sa_axi_arlock),
    .sa_axi_arcache(sa_axi_arcache),
    .sa_axi_arprot(sa_axi_arprot),
    .sa_axi_arregion(sa_axi_arregion),
    .sa_axi_arqos(sa_axi_arqos),
    .sa_axi_aruser(sa_axi_aruser),
    .sa_axi_arvalid(sa_axi_arvalid),
    .sa_axi_arready(sa_axi_arready),
    .sa_axi_rid(sa_axi_rid),
    .sa_axi_rdata(sa_axi_rdata),
    .sa_axi_rresp(sa_axi_rresp),
    .sa_axi_rlast(sa_axi_rlast),
    .sa_axi_ruser(sa_axi_ruser),
    .sa_axi_rvalid(sa_axi_rvalid),
    .sa_axi_rready(sa_axi_rready),
    .sb_axi_awid(sb_axi_awid),
    .sb_axi_awaddr(sb_axi_awaddr),
    .sb_axi_awlen(sb_axi_awlen),
    .sb_axi_awsize(sb_axi_awsize),
    .sb_axi_awburst(sb_axi_awburst),
    .sb_axi_awlock(sb_axi_awlock),
    .sb_axi_awcache(sb_axi_awcache),
    .sb_axi_awprot(sb_axi_awprot),
    .sb_axi_awregion(sb_axi_awregion),
    .sb_axi_awqos(sb_axi_awqos),
    .sb_axi_awuser(sb_axi_awuser),
    .sb_axi_awvalid(sb_axi_awvalid),
    .sb_axi_awready(sb_axi_awready),
    .sb_axi_wdata(sb_axi_wdata),
    .sb_axi_wstrb(sb_axi_wstrb),
    .sb_axi_wlast(sb_axi_wlast),
    .sb_axi_wuser(sb_axi_wuser),
    .sb_axi_wvalid(sb_axi_wvalid),
    .sb_axi_wready(sb_axi_wready),
    .sb_axi_bid(sb_axi_bid),
    .sb_axi_bresp(sb_axi_bresp),
    .sb_axi_buser(sb_axi_buser),
    .sb_axi_bvalid(sb_axi_bvalid),
    .sb_axi_bready(sb_axi_bready),
    .sb_axi_arid(sb_axi_arid),
    .sb_axi_araddr(sb_axi_araddr),
    .sb_axi_arlen(sb_axi_arlen),
    .sb_axi_arsize(sb_axi_arsize),
    .sb_axi_arburst(sb_axi_arburst),
    .sb_axi_arlock(sb_axi_arlock),
    .sb_axi_arcache(sb_axi_arcache),
    .sb_axi_arprot(sb_axi_arprot),
    .sb_axi_arregion(sb_axi_arregion),
    .sb_axi_arqos(sb_axi_arqos),
    .sb_axi_aruser(sb_axi_aruser),
    .sb_axi_arvalid(sb_axi_arvalid),
    .sb_axi_arready(sb_axi_arready),
    .sb_axi_rid(sb_axi_rid),
    .sb_axi_rdata(sb_axi_rdata),
    .sb_axi_rresp(sb_axi_rresp),
    .sb_axi_rlast(sb_axi_rlast),
    .sb_axi_ruser(sb_axi_ruser),
    .sb_axi_rvalid(sb_axi_rvalid),
    .sb_axi_rready(sb_axi_rready),
    .addra(addra),
    .douta(douta),
    .dina(dina),
    .ena(ena),
    .wea(wea),
    .addrb(addrb),
    .doutb(doutb),
    .dinb(dinb),
    .enb(enb),
    .web(web)
  );
endmodule
