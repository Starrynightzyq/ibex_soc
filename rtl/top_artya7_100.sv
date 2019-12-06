// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "memory_map_defines.sv"

module top_fpga (
    input               IO_CLK_P,
    input               IO_CLK_N,
    input               IO_RST_P,
    (*mark_debug ="true"*)output [3:0]        LED
);

  // parameter int          MEM_SIZE  = 64 * 1024; // 64 kB
  // parameter logic [31:0] MEM_START = 32'h00000000;
  // parameter [31:0] MEM_MASK  = MEM_SIZE-1;

  logic clk_sys, rst_sys_n;

  // On-Chip Peripherals arbiter
  logic [31:0] peri_addr;
  logic        peri_req;
  logic        peri_write;
  logic  [3:0] peri_be;
  logic [31:0] peri_wdata;
  logic        peri_gnt;
  logic        peri_rvalid;
  logic [31:0] peri_rdata;

  complex_core inst_complex_core
    (
      .clk         (clk_sys),
      .rst_n       (rst_sys_n),

      .peri_addr   (peri_addr),
      .peri_req    (peri_req),
      .peri_write  (peri_write),
      .peri_be     (peri_be),
      .peri_wdata  (peri_wdata),
      .peri_gnt    (peri_gnt),
      
      .peri_rvalid (peri_rvalid),
      .peri_rdata  (peri_rdata)
    );

  peripherals inst_peripherals
    (
      .clk         (clk_sys),
      .rst_n       (rst_sys_n),

      .peri_addr   (peri_addr),
      .peri_req    (peri_req),
      .peri_write  (peri_write),
      .peri_be     (peri_be),
      .peri_wdata  (peri_wdata),
      .peri_gnt    (peri_gnt),

      .peri_rvalid (peri_rvalid),
      .peri_rdata  (peri_rdata)
    );

  // Clock and reset
  clkgen_xil7series clkgen
    (
      .IO_CLK_P  (IO_CLK_P),
      .IO_CLK_N  (IO_CLK_N),
      .IO_RST_P  (IO_RST_P),
      .clk_sys   (clk_sys),
      .rst_sys_n (rst_sys_n)
    );

endmodule
