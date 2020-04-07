// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sun Mar 29 16:37:12 2020
// Host        : fitz-MS-7B00 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/fitz/FPGA/Project/ibex_soc/vivado_build/lowrisc_ibex_kc705.srcs/sources_1/bd/design_1/ip/design_1_ibex_core_axi_wallpaper_0_0/design_1_ibex_core_axi_wallpaper_0_0_stub.v
// Design      : design_1_ibex_core_axi_wallpaper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ibex_core_axi_wallpaper,Vivado 2017.4" *)
module design_1_ibex_core_axi_wallpaper_0_0(axi_aclk, axi_aresetn, irq_software_i, 
  irq_timer_i, irq_external_i, irq_fast_i, irq_nm_i, debug_req_i, fetch_enable_i, core_sleep_o, 
  data_axi_awid, data_axi_awaddr, data_axi_awlen, data_axi_awsize, data_axi_awburst, 
  data_axi_awlock, data_axi_awcache, data_axi_awprot, data_axi_awregion, data_axi_awqos, 
  data_axi_awuser, data_axi_awvalid, data_axi_awready, data_axi_wdata, data_axi_wstrb, 
  data_axi_wlast, data_axi_wuser, data_axi_wvalid, data_axi_wready, data_axi_bid, 
  data_axi_bresp, data_axi_buser, data_axi_bvalid, data_axi_bready, data_axi_arid, 
  data_axi_araddr, data_axi_arlen, data_axi_arsize, data_axi_arburst, data_axi_arlock, 
  data_axi_arcache, data_axi_arprot, data_axi_arregion, data_axi_arqos, data_axi_aruser, 
  data_axi_arvalid, data_axi_arready, data_axi_rid, data_axi_rdata, data_axi_rresp, 
  data_axi_rlast, data_axi_ruser, data_axi_rvalid, data_axi_rready, instr_axi_awid, 
  instr_axi_awaddr, instr_axi_awlen, instr_axi_awsize, instr_axi_awburst, instr_axi_awlock, 
  instr_axi_awcache, instr_axi_awprot, instr_axi_awregion, instr_axi_awqos, 
  instr_axi_awuser, instr_axi_awvalid, instr_axi_awready, instr_axi_wdata, instr_axi_wstrb, 
  instr_axi_wlast, instr_axi_wuser, instr_axi_wvalid, instr_axi_wready, instr_axi_bid, 
  instr_axi_bresp, instr_axi_buser, instr_axi_bvalid, instr_axi_bready, instr_axi_arid, 
  instr_axi_araddr, instr_axi_arlen, instr_axi_arsize, instr_axi_arburst, instr_axi_arlock, 
  instr_axi_arcache, instr_axi_arprot, instr_axi_arregion, instr_axi_arqos, 
  instr_axi_aruser, instr_axi_arvalid, instr_axi_arready, instr_axi_rid, instr_axi_rdata, 
  instr_axi_rresp, instr_axi_rlast, instr_axi_ruser, instr_axi_rvalid, instr_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="axi_aclk,axi_aresetn,irq_software_i,irq_timer_i,irq_external_i,irq_fast_i[14:0],irq_nm_i,debug_req_i,fetch_enable_i,core_sleep_o,data_axi_awid[11:0],data_axi_awaddr[31:0],data_axi_awlen[7:0],data_axi_awsize[2:0],data_axi_awburst[1:0],data_axi_awlock[0:0],data_axi_awcache[3:0],data_axi_awprot[2:0],data_axi_awregion[3:0],data_axi_awqos[3:0],data_axi_awuser[3:0],data_axi_awvalid,data_axi_awready,data_axi_wdata[31:0],data_axi_wstrb[3:0],data_axi_wlast,data_axi_wuser[3:0],data_axi_wvalid,data_axi_wready,data_axi_bid[11:0],data_axi_bresp[1:0],data_axi_buser[3:0],data_axi_bvalid,data_axi_bready,data_axi_arid[11:0],data_axi_araddr[31:0],data_axi_arlen[7:0],data_axi_arsize[2:0],data_axi_arburst[1:0],data_axi_arlock[0:0],data_axi_arcache[3:0],data_axi_arprot[2:0],data_axi_arregion[3:0],data_axi_arqos[3:0],data_axi_aruser[3:0],data_axi_arvalid,data_axi_arready,data_axi_rid[11:0],data_axi_rdata[31:0],data_axi_rresp[1:0],data_axi_rlast,data_axi_ruser[3:0],data_axi_rvalid,data_axi_rready,instr_axi_awid[11:0],instr_axi_awaddr[31:0],instr_axi_awlen[7:0],instr_axi_awsize[2:0],instr_axi_awburst[1:0],instr_axi_awlock[0:0],instr_axi_awcache[3:0],instr_axi_awprot[2:0],instr_axi_awregion[3:0],instr_axi_awqos[3:0],instr_axi_awuser[3:0],instr_axi_awvalid,instr_axi_awready,instr_axi_wdata[31:0],instr_axi_wstrb[3:0],instr_axi_wlast,instr_axi_wuser[3:0],instr_axi_wvalid,instr_axi_wready,instr_axi_bid[11:0],instr_axi_bresp[1:0],instr_axi_buser[3:0],instr_axi_bvalid,instr_axi_bready,instr_axi_arid[11:0],instr_axi_araddr[31:0],instr_axi_arlen[7:0],instr_axi_arsize[2:0],instr_axi_arburst[1:0],instr_axi_arlock[0:0],instr_axi_arcache[3:0],instr_axi_arprot[2:0],instr_axi_arregion[3:0],instr_axi_arqos[3:0],instr_axi_aruser[3:0],instr_axi_arvalid,instr_axi_arready,instr_axi_rid[11:0],instr_axi_rdata[31:0],instr_axi_rresp[1:0],instr_axi_rlast,instr_axi_ruser[3:0],instr_axi_rvalid,instr_axi_rready" */;
  input axi_aclk;
  input axi_aresetn;
  input irq_software_i;
  input irq_timer_i;
  input irq_external_i;
  input [14:0]irq_fast_i;
  input irq_nm_i;
  input debug_req_i;
  input fetch_enable_i;
  output core_sleep_o;
  output [11:0]data_axi_awid;
  output [31:0]data_axi_awaddr;
  output [7:0]data_axi_awlen;
  output [2:0]data_axi_awsize;
  output [1:0]data_axi_awburst;
  output [0:0]data_axi_awlock;
  output [3:0]data_axi_awcache;
  output [2:0]data_axi_awprot;
  output [3:0]data_axi_awregion;
  output [3:0]data_axi_awqos;
  output [3:0]data_axi_awuser;
  output data_axi_awvalid;
  input data_axi_awready;
  output [31:0]data_axi_wdata;
  output [3:0]data_axi_wstrb;
  output data_axi_wlast;
  output [3:0]data_axi_wuser;
  output data_axi_wvalid;
  input data_axi_wready;
  input [11:0]data_axi_bid;
  input [1:0]data_axi_bresp;
  input [3:0]data_axi_buser;
  input data_axi_bvalid;
  output data_axi_bready;
  output [11:0]data_axi_arid;
  output [31:0]data_axi_araddr;
  output [7:0]data_axi_arlen;
  output [2:0]data_axi_arsize;
  output [1:0]data_axi_arburst;
  output [0:0]data_axi_arlock;
  output [3:0]data_axi_arcache;
  output [2:0]data_axi_arprot;
  output [3:0]data_axi_arregion;
  output [3:0]data_axi_arqos;
  output [3:0]data_axi_aruser;
  output data_axi_arvalid;
  input data_axi_arready;
  input [11:0]data_axi_rid;
  input [31:0]data_axi_rdata;
  input [1:0]data_axi_rresp;
  input data_axi_rlast;
  input [3:0]data_axi_ruser;
  input data_axi_rvalid;
  output data_axi_rready;
  output [11:0]instr_axi_awid;
  output [31:0]instr_axi_awaddr;
  output [7:0]instr_axi_awlen;
  output [2:0]instr_axi_awsize;
  output [1:0]instr_axi_awburst;
  output [0:0]instr_axi_awlock;
  output [3:0]instr_axi_awcache;
  output [2:0]instr_axi_awprot;
  output [3:0]instr_axi_awregion;
  output [3:0]instr_axi_awqos;
  output [3:0]instr_axi_awuser;
  output instr_axi_awvalid;
  input instr_axi_awready;
  output [31:0]instr_axi_wdata;
  output [3:0]instr_axi_wstrb;
  output instr_axi_wlast;
  output [3:0]instr_axi_wuser;
  output instr_axi_wvalid;
  input instr_axi_wready;
  input [11:0]instr_axi_bid;
  input [1:0]instr_axi_bresp;
  input [3:0]instr_axi_buser;
  input instr_axi_bvalid;
  output instr_axi_bready;
  output [11:0]instr_axi_arid;
  output [31:0]instr_axi_araddr;
  output [7:0]instr_axi_arlen;
  output [2:0]instr_axi_arsize;
  output [1:0]instr_axi_arburst;
  output [0:0]instr_axi_arlock;
  output [3:0]instr_axi_arcache;
  output [2:0]instr_axi_arprot;
  output [3:0]instr_axi_arregion;
  output [3:0]instr_axi_arqos;
  output [3:0]instr_axi_aruser;
  output instr_axi_arvalid;
  input instr_axi_arready;
  input [11:0]instr_axi_rid;
  input [31:0]instr_axi_rdata;
  input [1:0]instr_axi_rresp;
  input instr_axi_rlast;
  input [3:0]instr_axi_ruser;
  input instr_axi_rvalid;
  output instr_axi_rready;
endmodule
