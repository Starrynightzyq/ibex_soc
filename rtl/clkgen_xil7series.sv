// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

module clkgen_xil7series (
    input IO_CLK_P,
    input IO_CLK_N,
    input IO_RST_P,
    output clk_sys,
    output uart_ref_clk,
    output rst_sys_n
);

  logic locked_pll;
  logic clk_out2;

  mmcm u_mmcm
   (
    // Clock out ports
    .clk_out1(clk_sys),     // output clk_out1
    .clk_out2(clk_out2),     // output clk_out2
    // Status and control signals
    .reset(IO_RST_P), // input reset
    .locked(locked_pll),       // output locked
   // Clock in ports
    .clk_in1_p(IO_CLK_P),    // input clk_in1_p
    .clk_in1_n(IO_CLK_N));    // input clk_in1_n

  clkdivider #(.DIVIDER(5)) inst_clkdivider (.clk(clk_out2), .reset_n(rst_sys_n), .clk_out(uart_ref_clk));


  proc_sys_reset_0 inst_sys_reset (
    .slowest_sync_clk(clk_sys),          // input wire slowest_sync_clk
    .ext_reset_in(IO_RST_P),                  // input wire ext_reset_in
    .aux_reset_in(1'b0),                  // input wire aux_reset_in
    .mb_debug_sys_rst(1'b0),          // input wire mb_debug_sys_rst
    .dcm_locked(locked_pll),                      // input wire dcm_locked
    .mb_reset(),                          // output wire mb_reset
    .bus_struct_reset(),          // output wire [0 : 0] bus_struct_reset
    .peripheral_reset(),          // output wire [0 : 0] peripheral_reset
    .interconnect_aresetn(),  // output wire [0 : 0] interconnect_aresetn
    .peripheral_aresetn(rst_sys_n)      // output wire [0 : 0] peripheral_aresetn
  );

   // assign rst_sys_n = locked_pll & (~IO_RST_P);

endmodule
