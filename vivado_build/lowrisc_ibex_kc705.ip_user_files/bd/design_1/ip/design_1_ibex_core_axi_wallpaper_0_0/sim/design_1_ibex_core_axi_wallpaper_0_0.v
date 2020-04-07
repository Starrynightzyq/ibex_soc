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


// IP VLNV: xilinx.com:module_ref:ibex_core_axi_wallpaper:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_ibex_core_axi_wallpaper_0_0 (
  axi_aclk,
  axi_aresetn,
  irq_software_i,
  irq_timer_i,
  irq_external_i,
  irq_fast_i,
  irq_nm_i,
  debug_req_i,
  fetch_enable_i,
  core_sleep_o,
  data_axi_awid,
  data_axi_awaddr,
  data_axi_awlen,
  data_axi_awsize,
  data_axi_awburst,
  data_axi_awlock,
  data_axi_awcache,
  data_axi_awprot,
  data_axi_awregion,
  data_axi_awqos,
  data_axi_awuser,
  data_axi_awvalid,
  data_axi_awready,
  data_axi_wdata,
  data_axi_wstrb,
  data_axi_wlast,
  data_axi_wuser,
  data_axi_wvalid,
  data_axi_wready,
  data_axi_bid,
  data_axi_bresp,
  data_axi_buser,
  data_axi_bvalid,
  data_axi_bready,
  data_axi_arid,
  data_axi_araddr,
  data_axi_arlen,
  data_axi_arsize,
  data_axi_arburst,
  data_axi_arlock,
  data_axi_arcache,
  data_axi_arprot,
  data_axi_arregion,
  data_axi_arqos,
  data_axi_aruser,
  data_axi_arvalid,
  data_axi_arready,
  data_axi_rid,
  data_axi_rdata,
  data_axi_rresp,
  data_axi_rlast,
  data_axi_ruser,
  data_axi_rvalid,
  data_axi_rready,
  instr_axi_awid,
  instr_axi_awaddr,
  instr_axi_awlen,
  instr_axi_awsize,
  instr_axi_awburst,
  instr_axi_awlock,
  instr_axi_awcache,
  instr_axi_awprot,
  instr_axi_awregion,
  instr_axi_awqos,
  instr_axi_awuser,
  instr_axi_awvalid,
  instr_axi_awready,
  instr_axi_wdata,
  instr_axi_wstrb,
  instr_axi_wlast,
  instr_axi_wuser,
  instr_axi_wvalid,
  instr_axi_wready,
  instr_axi_bid,
  instr_axi_bresp,
  instr_axi_buser,
  instr_axi_bvalid,
  instr_axi_bready,
  instr_axi_arid,
  instr_axi_araddr,
  instr_axi_arlen,
  instr_axi_arsize,
  instr_axi_arburst,
  instr_axi_arlock,
  instr_axi_arcache,
  instr_axi_arprot,
  instr_axi_arregion,
  instr_axi_arqos,
  instr_axi_aruser,
  instr_axi_arvalid,
  instr_axi_arready,
  instr_axi_rid,
  instr_axi_rdata,
  instr_axi_rresp,
  instr_axi_rlast,
  instr_axi_ruser,
  instr_axi_rvalid,
  instr_axi_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_aclk, ASSOCIATED_BUSIF data_axi:instr_axi, ASSOCIATED_RESET axi_aresetn, FREQ_HZ 20000000, PHASE 0.0, CLK_DOMAIN /clk_and_rst/clk_wiz_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_aclk CLK" *)
input wire axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi_aresetn RST" *)
input wire axi_aresetn;
input wire irq_software_i;
input wire irq_timer_i;
input wire irq_external_i;
input wire [14 : 0] irq_fast_i;
input wire irq_nm_i;
input wire debug_req_i;
input wire fetch_enable_i;
output wire core_sleep_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi AWID" *)
output wire [11 : 0] data_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi AWADDR" *)
output wire [31 : 0] data_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi AWLEN" *)
output wire [7 : 0] data_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi AWSIZE" *)
output wire [2 : 0] data_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi AWBURST" *)
output wire [1 : 0] data_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi AWLOCK" *)
output wire [0 : 0] data_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi AWCACHE" *)
output wire [3 : 0] data_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi AWPROT" *)
output wire [2 : 0] data_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi AWREGION" *)
output wire [3 : 0] data_axi_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi AWQOS" *)
output wire [3 : 0] data_axi_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi AWUSER" *)
output wire [3 : 0] data_axi_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi AWVALID" *)
output wire data_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi AWREADY" *)
input wire data_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi WDATA" *)
output wire [31 : 0] data_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi WSTRB" *)
output wire [3 : 0] data_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi WLAST" *)
output wire data_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi WUSER" *)
output wire [3 : 0] data_axi_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi WVALID" *)
output wire data_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi WREADY" *)
input wire data_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi BID" *)
input wire [11 : 0] data_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi BRESP" *)
input wire [1 : 0] data_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi BUSER" *)
input wire [3 : 0] data_axi_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi BVALID" *)
input wire data_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi BREADY" *)
output wire data_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi ARID" *)
output wire [11 : 0] data_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi ARADDR" *)
output wire [31 : 0] data_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi ARLEN" *)
output wire [7 : 0] data_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi ARSIZE" *)
output wire [2 : 0] data_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi ARBURST" *)
output wire [1 : 0] data_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi ARLOCK" *)
output wire [0 : 0] data_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi ARCACHE" *)
output wire [3 : 0] data_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi ARPROT" *)
output wire [2 : 0] data_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi ARREGION" *)
output wire [3 : 0] data_axi_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi ARQOS" *)
output wire [3 : 0] data_axi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi ARUSER" *)
output wire [3 : 0] data_axi_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi ARVALID" *)
output wire data_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi ARREADY" *)
input wire data_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi RID" *)
input wire [11 : 0] data_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi RDATA" *)
input wire [31 : 0] data_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi RRESP" *)
input wire [1 : 0] data_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi RLAST" *)
input wire data_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi RUSER" *)
input wire [3 : 0] data_axi_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi RVALID" *)
input wire data_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 20000000, ID_WIDTH 12, ADDR_WIDTH 32, AWUSER_WIDTH 4, ARUSER_WIDTH 4, WUSER_WIDTH 4, RUSER_WIDTH 4, BUSER_WIDTH 4, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_and_rst/clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_axi RREADY" *)
output wire data_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi AWID" *)
output wire [11 : 0] instr_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi AWADDR" *)
output wire [31 : 0] instr_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi AWLEN" *)
output wire [7 : 0] instr_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi AWSIZE" *)
output wire [2 : 0] instr_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi AWBURST" *)
output wire [1 : 0] instr_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi AWLOCK" *)
output wire [0 : 0] instr_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi AWCACHE" *)
output wire [3 : 0] instr_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi AWPROT" *)
output wire [2 : 0] instr_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi AWREGION" *)
output wire [3 : 0] instr_axi_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi AWQOS" *)
output wire [3 : 0] instr_axi_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi AWUSER" *)
output wire [3 : 0] instr_axi_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi AWVALID" *)
output wire instr_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi AWREADY" *)
input wire instr_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi WDATA" *)
output wire [31 : 0] instr_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi WSTRB" *)
output wire [3 : 0] instr_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi WLAST" *)
output wire instr_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi WUSER" *)
output wire [3 : 0] instr_axi_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi WVALID" *)
output wire instr_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi WREADY" *)
input wire instr_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi BID" *)
input wire [11 : 0] instr_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi BRESP" *)
input wire [1 : 0] instr_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi BUSER" *)
input wire [3 : 0] instr_axi_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi BVALID" *)
input wire instr_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi BREADY" *)
output wire instr_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi ARID" *)
output wire [11 : 0] instr_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi ARADDR" *)
output wire [31 : 0] instr_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi ARLEN" *)
output wire [7 : 0] instr_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi ARSIZE" *)
output wire [2 : 0] instr_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi ARBURST" *)
output wire [1 : 0] instr_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi ARLOCK" *)
output wire [0 : 0] instr_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi ARCACHE" *)
output wire [3 : 0] instr_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi ARPROT" *)
output wire [2 : 0] instr_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi ARREGION" *)
output wire [3 : 0] instr_axi_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi ARQOS" *)
output wire [3 : 0] instr_axi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi ARUSER" *)
output wire [3 : 0] instr_axi_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi ARVALID" *)
output wire instr_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi ARREADY" *)
input wire instr_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi RID" *)
input wire [11 : 0] instr_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi RDATA" *)
input wire [31 : 0] instr_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi RRESP" *)
input wire [1 : 0] instr_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi RLAST" *)
input wire instr_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi RUSER" *)
input wire [3 : 0] instr_axi_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi RVALID" *)
input wire instr_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME instr_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 20000000, ID_WIDTH 12, ADDR_WIDTH 32, AWUSER_WIDTH 4, ARUSER_WIDTH 4, WUSER_WIDTH 4, RUSER_WIDTH 4, BUSER_WIDTH 4, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_and_rst/clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 instr_axi RREADY" *)
output wire instr_axi_rready;

  ibex_core_axi_wallpaper #(
    .DM_HALT_ADDR(32'H00000000),
    .DM_EXCEPTION_ADDR(32'H00000000),
    .BOOT_ADDR(32'H80000000),
    .AXI_ADDR_WIDTH(32),
    .AXI_DATA_WIDTH(32),
    .AXI_ID_WIDTH(12),
    .AXI_USER_WIDTH(4),
    .AXI_STRB_WIDTH(4)
  ) inst (
    .axi_aclk(axi_aclk),
    .axi_aresetn(axi_aresetn),
    .irq_software_i(irq_software_i),
    .irq_timer_i(irq_timer_i),
    .irq_external_i(irq_external_i),
    .irq_fast_i(irq_fast_i),
    .irq_nm_i(irq_nm_i),
    .debug_req_i(debug_req_i),
    .fetch_enable_i(fetch_enable_i),
    .core_sleep_o(core_sleep_o),
    .data_axi_awid(data_axi_awid),
    .data_axi_awaddr(data_axi_awaddr),
    .data_axi_awlen(data_axi_awlen),
    .data_axi_awsize(data_axi_awsize),
    .data_axi_awburst(data_axi_awburst),
    .data_axi_awlock(data_axi_awlock),
    .data_axi_awcache(data_axi_awcache),
    .data_axi_awprot(data_axi_awprot),
    .data_axi_awregion(data_axi_awregion),
    .data_axi_awqos(data_axi_awqos),
    .data_axi_awuser(data_axi_awuser),
    .data_axi_awvalid(data_axi_awvalid),
    .data_axi_awready(data_axi_awready),
    .data_axi_wdata(data_axi_wdata),
    .data_axi_wstrb(data_axi_wstrb),
    .data_axi_wlast(data_axi_wlast),
    .data_axi_wuser(data_axi_wuser),
    .data_axi_wvalid(data_axi_wvalid),
    .data_axi_wready(data_axi_wready),
    .data_axi_bid(data_axi_bid),
    .data_axi_bresp(data_axi_bresp),
    .data_axi_buser(data_axi_buser),
    .data_axi_bvalid(data_axi_bvalid),
    .data_axi_bready(data_axi_bready),
    .data_axi_arid(data_axi_arid),
    .data_axi_araddr(data_axi_araddr),
    .data_axi_arlen(data_axi_arlen),
    .data_axi_arsize(data_axi_arsize),
    .data_axi_arburst(data_axi_arburst),
    .data_axi_arlock(data_axi_arlock),
    .data_axi_arcache(data_axi_arcache),
    .data_axi_arprot(data_axi_arprot),
    .data_axi_arregion(data_axi_arregion),
    .data_axi_arqos(data_axi_arqos),
    .data_axi_aruser(data_axi_aruser),
    .data_axi_arvalid(data_axi_arvalid),
    .data_axi_arready(data_axi_arready),
    .data_axi_rid(data_axi_rid),
    .data_axi_rdata(data_axi_rdata),
    .data_axi_rresp(data_axi_rresp),
    .data_axi_rlast(data_axi_rlast),
    .data_axi_ruser(data_axi_ruser),
    .data_axi_rvalid(data_axi_rvalid),
    .data_axi_rready(data_axi_rready),
    .instr_axi_awid(instr_axi_awid),
    .instr_axi_awaddr(instr_axi_awaddr),
    .instr_axi_awlen(instr_axi_awlen),
    .instr_axi_awsize(instr_axi_awsize),
    .instr_axi_awburst(instr_axi_awburst),
    .instr_axi_awlock(instr_axi_awlock),
    .instr_axi_awcache(instr_axi_awcache),
    .instr_axi_awprot(instr_axi_awprot),
    .instr_axi_awregion(instr_axi_awregion),
    .instr_axi_awqos(instr_axi_awqos),
    .instr_axi_awuser(instr_axi_awuser),
    .instr_axi_awvalid(instr_axi_awvalid),
    .instr_axi_awready(instr_axi_awready),
    .instr_axi_wdata(instr_axi_wdata),
    .instr_axi_wstrb(instr_axi_wstrb),
    .instr_axi_wlast(instr_axi_wlast),
    .instr_axi_wuser(instr_axi_wuser),
    .instr_axi_wvalid(instr_axi_wvalid),
    .instr_axi_wready(instr_axi_wready),
    .instr_axi_bid(instr_axi_bid),
    .instr_axi_bresp(instr_axi_bresp),
    .instr_axi_buser(instr_axi_buser),
    .instr_axi_bvalid(instr_axi_bvalid),
    .instr_axi_bready(instr_axi_bready),
    .instr_axi_arid(instr_axi_arid),
    .instr_axi_araddr(instr_axi_araddr),
    .instr_axi_arlen(instr_axi_arlen),
    .instr_axi_arsize(instr_axi_arsize),
    .instr_axi_arburst(instr_axi_arburst),
    .instr_axi_arlock(instr_axi_arlock),
    .instr_axi_arcache(instr_axi_arcache),
    .instr_axi_arprot(instr_axi_arprot),
    .instr_axi_arregion(instr_axi_arregion),
    .instr_axi_arqos(instr_axi_arqos),
    .instr_axi_aruser(instr_axi_aruser),
    .instr_axi_arvalid(instr_axi_arvalid),
    .instr_axi_arready(instr_axi_arready),
    .instr_axi_rid(instr_axi_rid),
    .instr_axi_rdata(instr_axi_rdata),
    .instr_axi_rresp(instr_axi_rresp),
    .instr_axi_rlast(instr_axi_rlast),
    .instr_axi_ruser(instr_axi_ruser),
    .instr_axi_rvalid(instr_axi_rvalid),
    .instr_axi_rready(instr_axi_rready)
  );
endmodule
