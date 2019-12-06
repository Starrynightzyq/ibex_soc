
`include "memory_map_defines.sv"

module peripherals_interconnect
#(
    parameter ADDR_WIDTH     = 32,
    parameter DATA_WIDTH     = 32,
    parameter BE_WIDTH       = DATA_WIDTH/8,
    parameter ID_WIDTH       = 10,
    parameter AUX_WIDTH      = 8
) (
	input clk,    // Clock
	// input clk_en, // Clock Enable
	input rst_n,  // Asynchronous reset active low


    input  logic [ADDR_WIDTH-1:0]     slaver_PADDR  ,
    input  logic [DATA_WIDTH-1:0]     slaver_PWDATA ,
    input  logic                      slaver_PWRITE ,
    input  logic                      slaver_PSEL   ,
    input  logic                      slaver_PENABLE,
    output logic [DATA_WIDTH-1:0]     slaver_PRDATA ,
    output logic                      slaver_PREADY ,
    output logic                      slaver_PSLVERR,
	
    output logic [ADDR_WIDTH-1:0]     master_0_PADDR  ,
    output logic [DATA_WIDTH-1:0]     master_0_PWDATA ,
    output logic                      master_0_PWRITE ,
    output logic                      master_0_PSEL   ,
    output logic                      master_0_PENABLE,
    input  logic [DATA_WIDTH-1:0]     master_0_PRDATA ,
    input  logic                      master_0_PREADY ,
    input  logic                      master_0_PSLVERR
);

	assign master_0_PADDR   = slaver_PADDR  ;
	assign master_0_PWDATA  = slaver_PWDATA ;
	assign master_0_PWRITE  = slaver_PWRITE ;
	assign master_0_PSEL    = slaver_PSEL   ;
	assign master_0_PENABLE = slaver_PENABLE;
	assign slaver_PRDATA    = master_0_PRDATA ;
	assign slaver_PREADY    = master_0_PREADY ;
	assign slaver_PSLVERR   = master_0_PSLVERR;

endmodule