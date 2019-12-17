
`include "memory_map_defines.sv"

module peripherals (
	input clk,    // Clock
	input ref_clock, // uart ref clk
	// input clk_en, // Clock Enable
	input rst_n,  // Asynchronous reset active low
	
	// On-Chip Peripherals arbiter
	input  logic [31:0] peri_addr,
	input  logic        peri_req,
	input  logic        peri_write,
	input  logic  [3:0] peri_be,
	input  logic [31:0] peri_wdata,
	output logic        peri_gnt,

	output logic        peri_rvalid,
	output logic [31:0] peri_rdata,

	input  logic        uart_0_rx_i,
	output logic        uart_0_tx_o
);

    parameter ADDR_WIDTH     = 32;
    parameter DATA_WIDTH     = 32;
    parameter BE_WIDTH       = DATA_WIDTH/8;
    parameter ID_WIDTH       = 10;
    parameter AUX_WIDTH      = 8;

    logic [ADDR_WIDTH-1:0]     master_apb_PADDR;
    logic [DATA_WIDTH-1:0]     master_apb_PWDATA;
    logic                      master_apb_PWRITE;
    logic                      master_apb_PSEL;
    logic                      master_apb_PENABLE;
    logic [DATA_WIDTH-1:0]     master_apb_PRDATA;
    logic                      master_apb_PREADY;
    logic                      master_apb_PSLVERR;

	logic [ADDR_WIDTH-1:0]     master_0_PADDR  ;
	logic [DATA_WIDTH-1:0]     master_0_PWDATA ;
	logic                      master_0_PWRITE ;
	logic                      master_0_PSEL   ;
	logic                      master_0_PENABLE;
	logic [DATA_WIDTH-1:0]     master_0_PRDATA ;
	logic                      master_0_PREADY ;
	logic                      master_0_PSLVERR;

	(*mark_debug ="true"*)logic uart_0_interrupt;


	lint_2_apb #(
			.ADDR_WIDTH(ADDR_WIDTH),
			.DATA_WIDTH(DATA_WIDTH),
			.BE_WIDTH(BE_WIDTH),
			.ID_WIDTH(ID_WIDTH),
			.AUX_WIDTH(AUX_WIDTH)
		) inst_lint_2_apb (
			.clk            (clk),
			.rst_n          (rst_n),

			// core data interface
			.data_req_i     (peri_req),
			.data_add_i     (peri_addr),
			.data_wen_i     (peri_write),
			.data_wdata_i   (peri_wdata),
			.data_be_i      (peri_be),
			.data_aux_i     (),
			.data_ID_i      (),
			.data_gnt_o     (peri_gnt),

			.data_r_valid_o (peri_rvalid),
			.data_r_rdata_o (peri_rdata),
			.data_r_opc_o   (),
			.data_r_aux_o   (),
			.data_r_ID_o    (),

			// apb master interface
			.master_PADDR   (master_apb_PADDR),
			.master_PWDATA  (master_apb_PWDATA),
			.master_PWRITE  (master_apb_PWRITE),
			.master_PSEL    (master_apb_PSEL),
			.master_PENABLE (master_apb_PENABLE),
			.master_PRDATA  (master_apb_PRDATA),
			.master_PREADY  (master_apb_PREADY),
			.master_PSLVERR (master_apb_PSLVERR)
		);

	peripherals_interconnect inst_peripherals_interconnect
		(
			.clk              (clk),
			.rst_n            (rst_n),
			.slaver_PADDR     (master_apb_PADDR),
			.slaver_PWDATA    (master_apb_PWDATA),
			.slaver_PWRITE    (master_apb_PWRITE),
			.slaver_PSEL      (master_apb_PSEL),
			.slaver_PENABLE   (master_apb_PENABLE),
			.slaver_PRDATA    (master_apb_PRDATA),
			.slaver_PREADY    (master_apb_PREADY),
			.slaver_PSLVERR   (master_apb_PSLVERR),

			.master_0_PADDR   (master_0_PADDR),
			.master_0_PWDATA  (master_0_PWDATA),
			.master_0_PWRITE  (master_0_PWRITE),
			.master_0_PSEL    (master_0_PSEL),
			.master_0_PENABLE (master_0_PENABLE),
			.master_0_PRDATA  (master_0_PRDATA),
			.master_0_PREADY  (master_0_PREADY),
			.master_0_PSLVERR (master_0_PSLVERR)
		);

/*
	apb_gpio #(
			.APB_ADDR_WIDTH(12),
			.PAD_NUM(32)
		) inst_apb_gpio (
			.HCLK            (clk),
			.HRESETn         (rst_n),

			.dft_cg_enable_i ('b0),

			.PADDR           (master_0_PADDR),
			.PWDATA          (master_0_PWDATA),
			.PWRITE          (master_0_PWRITE),
			.PSEL            (master_0_PSEL),
			.PENABLE         (master_0_PENABLE),
			.PRDATA          (master_0_PRDATA),
			.PREADY          (master_0_PREADY),
			.PSLVERR         (master_0_PSLVERR),

			.gpio_in         (32'h10293847), // test
			.gpio_in_sync    (gpio_in_sync),
			.gpio_out        (gpio_out),
			.gpio_dir        (gpio_dir),
			.gpio_padcfg     (gpio_padcfg),

			.interrupt       (interrupt)
		);
*/		
/*
	apb_uart_sv #(
			.APB_ADDR_WIDTH(12) // APB slaves are 4KB by default
		) inst_apb_uart_0 (
			.CLK     (clk),
			.RSTN    (rst_n),
			.PADDR   (master_0_PADDR),
			.PWDATA  (master_0_PWDATA),
			.PWRITE  (master_0_PWRITE),
			.PSEL    (master_0_PSEL),
			.PENABLE (master_0_PENABLE),
			.PRDATA  (master_0_PRDATA),
			.PREADY  (master_0_PREADY),
			.PSLVERR (master_0_PSLVERR),
			.rx_i    (uart_0_rx_i),
			.tx_o    (uart_0_tx_o),
			.event_o (uart_0_interrupt)
		);
*/
	micro_uart3_apb inst_micro_uart_0
		(
			.clk         (clk),
			.reset_n     (rst_n),
			.ref_clock   (ref_clock),
			.apb_paddr   (master_0_PADDR),
			.apb_pwdata  (master_0_PWDATA),
			.apb_pwrite  (master_0_PWRITE),
			.apb_psel    (master_0_PSEL),
			.apb_penable (master_0_PENABLE),
			.apb_prdata  (master_0_PRDATA),
			.apb_pready  (master_0_PREADY),
			.apb_pslverr (master_0_PSLVERR),
			.irq         (uart_0_interrupt),
			.ser_in      (uart_0_rx_i),
			.ser_out     (uart_0_tx_o)
		);


endmodule