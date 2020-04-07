// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

`include "memory_map_defines.sv"

module top_fpga (
    input               IO_CLK_P,
    input               IO_CLK_N,
    input               IO_RST_P,

    (*mark_debug ="true"*)input  logic        uart_rx_i,
    (*mark_debug ="true"*)output logic        uart_tx_o,

    input  logic                          jtag_tck,
    input  logic                          jtag_trst_n,
    input  logic                          jtag_tms,
    input  logic                          jtag_tdi,
    output logic                          jtag_tdo
);

  // parameter int          MEM_SIZE  = 64 * 1024; // 64 kB
  // parameter logic [31:0] MEM_START = 32'h00000000;
  // parameter [31:0] MEM_MASK  = MEM_SIZE-1;

  logic clk_sys, uart_ref_clk;
  logic rst_sys_n;

  // On-Chip Peripherals arbiter
  logic [31:0] peri_addr;
  logic        peri_req;
  logic        peri_write;
  logic  [3:0] peri_be;
  logic [31:0] peri_wdata;
  logic        peri_gnt;
  logic        peri_rvalid;
  logic [31:0] peri_rdata;

  // interrupt signals
  logic irq_timer;
  logic irq_external;

  // debug bus
  APB_BUS apb_debug_bus();
  XBAR_TCDM_BUS lint_debug_bus();
  logic debug_req;

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
      .peri_rdata  (peri_rdata),

      .irq_software_i('b0),
      .irq_timer_i   ('b0),
      .irq_external_i(irq_external),
      .irq_fast_i    ('b0),
      .irq_nm_i      ('b0),
      .debug_req_i   (debug_req)
    );

  peripherals inst_peripherals
    (
      .clk         (clk_sys),
      .ref_clock   (uart_ref_clk),
      .rst_n       (rst_sys_n),

      // core data interface
      .peri_addr   (peri_addr),
      .peri_req    (peri_req),
      .peri_write  (peri_write),
      .peri_be     (peri_be),
      .peri_wdata  (peri_wdata),
      .peri_gnt    (peri_gnt),

      .peri_rvalid (peri_rvalid),
      .peri_rdata  (peri_rdata),

      .debug_master  (apb_debug_bus),

      .irq_timer_o   (irq_timer),
      .irq_external_o(irq_external),

      // uart
      .uart_0_rx_i(uart_rx_i),
      .uart_0_tx_o(uart_tx_o)
    );

  debug_domain inst_debug_domain
    (
      .clk              (clk_sys),
      .rst_n            (rst_sys_n),
      
      .s_apb_debug_bus  (apb_debug_bus),
      .m_lint_debug_bus (lint_debug_bus),

      .debug_req_o      (debug_req),
      
      .soc_jtag_reg_i   (soc_jtag_reg_i),
      .soc_jtag_reg_o   (soc_jtag_reg_o),
      .sel_fll_clk_o    (sel_fll_clk_o),

      .jtag_tck_i       (jtag_tck),
      .jtag_trst_ni     (jtag_trst_n),
      .jtag_tms_i       (jtag_tms),
      .jtag_tdi_i       (jtag_tdi),
      .jtag_tdo_o       (jtag_tdo)
    );

  // Clock and reset
  clkgen_xil7series clkgen
    (
      .IO_CLK_P  (IO_CLK_P),
      .IO_CLK_N  (IO_CLK_N),
      .IO_RST_P  (IO_RST_P),
      .clk_sys   (clk_sys),
      .uart_ref_clk(uart_ref_clk),
      .rst_sys_n (rst_sys_n)
    );

endmodule
