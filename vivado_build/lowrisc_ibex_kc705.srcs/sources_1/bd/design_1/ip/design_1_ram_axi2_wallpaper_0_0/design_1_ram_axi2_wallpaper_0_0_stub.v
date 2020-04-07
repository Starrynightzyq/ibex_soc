// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sun Mar 29 16:35:38 2020
// Host        : fitz-MS-7B00 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/fitz/FPGA/Project/ibex_soc/vivado_build/lowrisc_ibex_kc705.srcs/sources_1/bd/design_1/ip/design_1_ram_axi2_wallpaper_0_0/design_1_ram_axi2_wallpaper_0_0_stub.v
// Design      : design_1_ram_axi2_wallpaper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ram_axi2_wallpaper,Vivado 2017.4" *)
module design_1_ram_axi2_wallpaper_0_0(axi_aclk, axi_aresetn, sa_axi_awid, 
  sa_axi_awaddr, sa_axi_awlen, sa_axi_awsize, sa_axi_awburst, sa_axi_awlock, sa_axi_awcache, 
  sa_axi_awprot, sa_axi_awregion, sa_axi_awqos, sa_axi_awuser, sa_axi_awvalid, 
  sa_axi_awready, sa_axi_wdata, sa_axi_wstrb, sa_axi_wlast, sa_axi_wuser, sa_axi_wvalid, 
  sa_axi_wready, sa_axi_bid, sa_axi_bresp, sa_axi_buser, sa_axi_bvalid, sa_axi_bready, 
  sa_axi_arid, sa_axi_araddr, sa_axi_arlen, sa_axi_arsize, sa_axi_arburst, sa_axi_arlock, 
  sa_axi_arcache, sa_axi_arprot, sa_axi_arregion, sa_axi_arqos, sa_axi_aruser, 
  sa_axi_arvalid, sa_axi_arready, sa_axi_rid, sa_axi_rdata, sa_axi_rresp, sa_axi_rlast, 
  sa_axi_ruser, sa_axi_rvalid, sa_axi_rready, sb_axi_awid, sb_axi_awaddr, sb_axi_awlen, 
  sb_axi_awsize, sb_axi_awburst, sb_axi_awlock, sb_axi_awcache, sb_axi_awprot, 
  sb_axi_awregion, sb_axi_awqos, sb_axi_awuser, sb_axi_awvalid, sb_axi_awready, sb_axi_wdata, 
  sb_axi_wstrb, sb_axi_wlast, sb_axi_wuser, sb_axi_wvalid, sb_axi_wready, sb_axi_bid, 
  sb_axi_bresp, sb_axi_buser, sb_axi_bvalid, sb_axi_bready, sb_axi_arid, sb_axi_araddr, 
  sb_axi_arlen, sb_axi_arsize, sb_axi_arburst, sb_axi_arlock, sb_axi_arcache, sb_axi_arprot, 
  sb_axi_arregion, sb_axi_arqos, sb_axi_aruser, sb_axi_arvalid, sb_axi_arready, sb_axi_rid, 
  sb_axi_rdata, sb_axi_rresp, sb_axi_rlast, sb_axi_ruser, sb_axi_rvalid, sb_axi_rready, addra, 
  douta, dina, ena, wea, addrb, doutb, dinb, enb, web)
/* synthesis syn_black_box black_box_pad_pin="axi_aclk,axi_aresetn,sa_axi_awid[11:0],sa_axi_awaddr[31:0],sa_axi_awlen[7:0],sa_axi_awsize[2:0],sa_axi_awburst[1:0],sa_axi_awlock[0:0],sa_axi_awcache[3:0],sa_axi_awprot[2:0],sa_axi_awregion[3:0],sa_axi_awqos[3:0],sa_axi_awuser[3:0],sa_axi_awvalid,sa_axi_awready,sa_axi_wdata[31:0],sa_axi_wstrb[7:0],sa_axi_wlast,sa_axi_wuser[3:0],sa_axi_wvalid,sa_axi_wready,sa_axi_bid[11:0],sa_axi_bresp[1:0],sa_axi_buser[3:0],sa_axi_bvalid,sa_axi_bready,sa_axi_arid[11:0],sa_axi_araddr[31:0],sa_axi_arlen[7:0],sa_axi_arsize[2:0],sa_axi_arburst[1:0],sa_axi_arlock[0:0],sa_axi_arcache[3:0],sa_axi_arprot[2:0],sa_axi_arregion[3:0],sa_axi_arqos[3:0],sa_axi_aruser[3:0],sa_axi_arvalid,sa_axi_arready,sa_axi_rid[11:0],sa_axi_rdata[31:0],sa_axi_rresp[1:0],sa_axi_rlast,sa_axi_ruser[3:0],sa_axi_rvalid,sa_axi_rready,sb_axi_awid[11:0],sb_axi_awaddr[31:0],sb_axi_awlen[7:0],sb_axi_awsize[2:0],sb_axi_awburst[1:0],sb_axi_awlock[0:0],sb_axi_awcache[3:0],sb_axi_awprot[2:0],sb_axi_awregion[3:0],sb_axi_awqos[3:0],sb_axi_awuser[3:0],sb_axi_awvalid,sb_axi_awready,sb_axi_wdata[31:0],sb_axi_wstrb[7:0],sb_axi_wlast,sb_axi_wuser[3:0],sb_axi_wvalid,sb_axi_wready,sb_axi_bid[11:0],sb_axi_bresp[1:0],sb_axi_buser[3:0],sb_axi_bvalid,sb_axi_bready,sb_axi_arid[11:0],sb_axi_araddr[31:0],sb_axi_arlen[7:0],sb_axi_arsize[2:0],sb_axi_arburst[1:0],sb_axi_arlock[0:0],sb_axi_arcache[3:0],sb_axi_arprot[2:0],sb_axi_arregion[3:0],sb_axi_arqos[3:0],sb_axi_aruser[3:0],sb_axi_arvalid,sb_axi_arready,sb_axi_rid[11:0],sb_axi_rdata[31:0],sb_axi_rresp[1:0],sb_axi_rlast,sb_axi_ruser[3:0],sb_axi_rvalid,sb_axi_rready,addra[31:0],douta[31:0],dina[31:0],ena,wea[3:0],addrb[31:0],doutb[31:0],dinb[31:0],enb,web[3:0]" */;
  input axi_aclk;
  input axi_aresetn;
  input [11:0]sa_axi_awid;
  input [31:0]sa_axi_awaddr;
  input [7:0]sa_axi_awlen;
  input [2:0]sa_axi_awsize;
  input [1:0]sa_axi_awburst;
  input [0:0]sa_axi_awlock;
  input [3:0]sa_axi_awcache;
  input [2:0]sa_axi_awprot;
  input [3:0]sa_axi_awregion;
  input [3:0]sa_axi_awqos;
  input [3:0]sa_axi_awuser;
  input sa_axi_awvalid;
  output sa_axi_awready;
  input [31:0]sa_axi_wdata;
  input [7:0]sa_axi_wstrb;
  input sa_axi_wlast;
  input [3:0]sa_axi_wuser;
  input sa_axi_wvalid;
  output sa_axi_wready;
  output [11:0]sa_axi_bid;
  output [1:0]sa_axi_bresp;
  output [3:0]sa_axi_buser;
  output sa_axi_bvalid;
  input sa_axi_bready;
  input [11:0]sa_axi_arid;
  input [31:0]sa_axi_araddr;
  input [7:0]sa_axi_arlen;
  input [2:0]sa_axi_arsize;
  input [1:0]sa_axi_arburst;
  input [0:0]sa_axi_arlock;
  input [3:0]sa_axi_arcache;
  input [2:0]sa_axi_arprot;
  input [3:0]sa_axi_arregion;
  input [3:0]sa_axi_arqos;
  input [3:0]sa_axi_aruser;
  input sa_axi_arvalid;
  output sa_axi_arready;
  output [11:0]sa_axi_rid;
  output [31:0]sa_axi_rdata;
  output [1:0]sa_axi_rresp;
  output sa_axi_rlast;
  output [3:0]sa_axi_ruser;
  output sa_axi_rvalid;
  input sa_axi_rready;
  input [11:0]sb_axi_awid;
  input [31:0]sb_axi_awaddr;
  input [7:0]sb_axi_awlen;
  input [2:0]sb_axi_awsize;
  input [1:0]sb_axi_awburst;
  input [0:0]sb_axi_awlock;
  input [3:0]sb_axi_awcache;
  input [2:0]sb_axi_awprot;
  input [3:0]sb_axi_awregion;
  input [3:0]sb_axi_awqos;
  input [3:0]sb_axi_awuser;
  input sb_axi_awvalid;
  output sb_axi_awready;
  input [31:0]sb_axi_wdata;
  input [7:0]sb_axi_wstrb;
  input sb_axi_wlast;
  input [3:0]sb_axi_wuser;
  input sb_axi_wvalid;
  output sb_axi_wready;
  output [11:0]sb_axi_bid;
  output [1:0]sb_axi_bresp;
  output [3:0]sb_axi_buser;
  output sb_axi_bvalid;
  input sb_axi_bready;
  input [11:0]sb_axi_arid;
  input [31:0]sb_axi_araddr;
  input [7:0]sb_axi_arlen;
  input [2:0]sb_axi_arsize;
  input [1:0]sb_axi_arburst;
  input [0:0]sb_axi_arlock;
  input [3:0]sb_axi_arcache;
  input [2:0]sb_axi_arprot;
  input [3:0]sb_axi_arregion;
  input [3:0]sb_axi_arqos;
  input [3:0]sb_axi_aruser;
  input sb_axi_arvalid;
  output sb_axi_arready;
  output [11:0]sb_axi_rid;
  output [31:0]sb_axi_rdata;
  output [1:0]sb_axi_rresp;
  output sb_axi_rlast;
  output [3:0]sb_axi_ruser;
  output sb_axi_rvalid;
  input sb_axi_rready;
  output [31:0]addra;
  output [31:0]douta;
  input [31:0]dina;
  output ena;
  output [3:0]wea;
  output [31:0]addrb;
  output [31:0]doutb;
  input [31:0]dinb;
  output enb;
  output [3:0]web;
endmodule
