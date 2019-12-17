// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

module prim_clock_gating (
  input         clk_i,
  input         en_i,
  input         test_en_i,
  output logic  clk_o
);

	parameter BUFGCE_EN = 0;

	generate
		if (BUFGCE_EN == 1) begin
			BUFGCE u_clock_gating (
				.I  (clk_i),
				.CE (en_i | test_en_i),
				.O  (clk_o)
			);
		end else begin 
			logic en;
			assign en = en_i | test_en_i;
			assign clk_o = en ? clk_i : 1'b0;
		end
	endgenerate

endmodule
