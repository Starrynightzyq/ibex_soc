
`timescale 1ns/1ps

module tb_top_artya7_100 (); /* this is automatically generated */

	logic rstb;
	logic srst;
	logic clk;

	// clock
	initial begin
		clk = '0;
		forever #(0.5) clk = ~clk;
	end

	// reset
	initial begin
		rstb <= '0;
		srst <= '0;
		#20
		rstb <= '1;
		repeat (5) @(posedge clk);
		srst <= '1;
		repeat (1) @(posedge clk);
		srst <= '0;
	end

	// (*NOTE*) replace reset, clock, others

	parameter int MEM_SIZE    = 64 * 1024;
	parameter logic MEM_START = 32'h00000000;
	parameter int MEM_MASK  = MEM_SIZE-1;

	logic       IO_CLK;
	logic       IO_RST_N;
	logic [3:0] LED;

	top_artya7_100 #(
			.MEM_SIZE(MEM_SIZE),
			.MEM_START(MEM_START),
			.MEM_MASK(MEM_MASK)
		) inst_top_artya7_100 (
			.IO_CLK   (clk),
			.IO_RST_N (~srst),
			.LED      (LED)
		);

	initial begin
		// do something

		// repeat(10)@(posedge clk);
		// $finish;
	end
/*
	// dump wave
	initial begin
		if ( $test$plusargs("fsdb") ) begin
			$fsdbDumpfile("tb_top_artya7_100.fsdb");
			$fsdbDumpvars(0, "tb_top_artya7_100", "+mda", "+functions");
		end
	end
*/
endmodule
