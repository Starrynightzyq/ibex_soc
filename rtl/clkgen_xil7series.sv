// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

module clkgen_xil7series (
    input IO_CLK_P,
    input IO_CLK_N,
    input IO_RST_P,
    output clk_sys,
    output rst_sys_n
);

  logic locked_pll;

  mmcm u_mmcm
   (
    // Clock out ports
    .clk_out1(clk_sys),     // output clk_out1
    .clk_out2(),     // output clk_out2
    // Status and control signals
    .reset(IO_RST_P), // input reset
    .locked(locked_pll),       // output locked
   // Clock in ports
    .clk_in1_p(IO_CLK_P),    // input clk_in1_p
    .clk_in1_n(IO_CLK_N));    // input clk_in1_n

   assign rst_sys_n = locked_pll & (~IO_RST_P);

endmodule
