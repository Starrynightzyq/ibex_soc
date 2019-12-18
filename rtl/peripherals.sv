
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
/*
    logic [ADDR_WIDTH-1:0]     core_apb_PADDR;
    logic [DATA_WIDTH-1:0]     core_apb_PWDATA;
    logic                      core_apb_PWRITE;
    logic                      core_apb_PSEL;
    logic                      core_apb_PENABLE;
    logic [DATA_WIDTH-1:0]     core_apb_PRDATA;
    logic                      core_apb_PREADY;
    logic                      core_apb_PSLVERR;

	logic [ADDR_WIDTH-1:0]     master_0_PADDR  ;
	logic [DATA_WIDTH-1:0]     master_0_PWDATA ;
	logic                      master_0_PWRITE ;
	logic                      master_0_PSEL   ;
	logic                      master_0_PENABLE;
	logic [DATA_WIDTH-1:0]     master_0_PRDATA ;
	logic                      master_0_PREADY ;
	logic                      master_0_PSLVERR;
*/

	APB_BUS core_data_bus();
	APB_BUS gpio_apb_bus();
	APB_BUS uart_apb_bus();
	APB_BUS timer_apb_bus();

	(*mark_debug ="true"*)logic uart_0_irq;
	(*mark_debug ="true"*)logic timer_0_irq;


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
			.master_PADDR   (core_data_bus.paddr),
			.master_PWDATA  (core_data_bus.pwdata),
			.master_PWRITE  (core_data_bus.pwrite),
			.master_PSEL    (core_data_bus.psel),
			.master_PENABLE (core_data_bus.penable),
			.master_PRDATA  (core_data_bus.prdata),
			.master_PREADY  (core_data_bus.pready),
			.master_PSLVERR (core_data_bus.pslverr)
		);
/*
	peripherals_interconnect inst_peripherals_interconnect
		(
			.clk              (clk),
			.rst_n            (rst_n),
			.slaver_PADDR     (core_apb_PADDR),
			.slaver_PWDATA    (core_apb_PWDATA),
			.slaver_PWRITE    (core_apb_PWRITE),
			.slaver_PSEL      (core_apb_PSEL),
			.slaver_PENABLE   (core_apb_PENABLE),
			.slaver_PRDATA    (core_apb_PRDATA),
			.slaver_PREADY    (core_apb_PREADY),
			.slaver_PSLVERR   (core_apb_PSLVERR),

			.master_0_PADDR   (master_0_PADDR),
			.master_0_PWDATA  (master_0_PWDATA),
			.master_0_PWRITE  (master_0_PWRITE),
			.master_0_PSEL    (master_0_PSEL),
			.master_0_PENABLE (master_0_PENABLE),
			.master_0_PRDATA  (master_0_PRDATA),
			.master_0_PREADY  (master_0_PREADY),
			.master_0_PSLVERR (master_0_PSLVERR)
		);
*/
	periph_bus_wrap #(
			.APB_ADDR_WIDTH(ADDR_WIDTH),
			.APB_DATA_WIDTH(DATA_WIDTH)
		) inst_periph_bus_wrap (
			.clk_i        (clk_i),
			.rst_ni       (rst_ni),
			.apb_slave    (core_data_bus),
			.gpio_master  (gpio_apb_bus),
			.uart_master  (uart_apb_bus),
			.timer_master (timer_apb_bus)
		);



	apb_gpio #(
			.APB_ADDR_WIDTH(12),
			.PAD_NUM(32)
		) inst_apb_gpio (
			.HCLK            (clk),
			.HRESETn         (rst_n),

			.dft_cg_enable_i ('b0),

			.PADDR           (gpio_apb_bus.paddr),
			.PWDATA          (gpio_apb_bus.pwdata),
			.PWRITE          (gpio_apb_bus.pwrite),
			.PSEL            (gpio_apb_bus.psel),
			.PENABLE         (gpio_apb_bus.penable),
			.PRDATA          (gpio_apb_bus.prdata),
			.PREADY          (gpio_apb_bus.pready),
			.PSLVERR         (gpio_apb_bus.pslverr),

			.gpio_in         (32'h10293847), // test
			.gpio_in_sync    (gpio_in_sync),
			.gpio_out        (gpio_out),
			.gpio_dir        (gpio_dir),
			.gpio_padcfg     (gpio_padcfg),

			.interrupt       (interrupt)
		);

	micro_uart3_apb inst_micro_uart_0
		(
			.clk         (clk),
			.reset_n     (rst_n),
			.ref_clock   (ref_clock),

			.apb_paddr   (uart_apb_bus.paddr),
			.apb_pwdata  (uart_apb_bus.pwdata),
			.apb_pwrite  (uart_apb_bus.pwrite),
			.apb_psel    (uart_apb_bus.psel),
			.apb_penable (uart_apb_bus.penable),
			.apb_prdata  (uart_apb_bus.prdata),
			.apb_pready  (uart_apb_bus.pready),
			.apb_pslverr (uart_apb_bus.pslverr),

			.irq         (uart_0_irq),
			.ser_in      (uart_0_rx_i),
			.ser_out     (uart_0_tx_o)
		);
		

	apb_timer #(
			.APB_ADDR_WIDTH(12),
			.TIMER_CNT(2)
		) inst_apb_timer (
			.HCLK    (clk),
			.HRESETn (rst_n),

			.PADDR   (timer_apb_bus.paddr),
			.PWDATA  (timer_apb_bus.pwdata),
			.PWRITE  (timer_apb_bus.pwrite),
			.PSEL    (timer_apb_bus.psel),
			.PENABLE (timer_apb_bus.penable),
			.PRDATA  (timer_apb_bus.prdata),
			.PREADY  (timer_apb_bus.pready),
			.PSLVERR (timer_apb_bus.pslverr),

			.irq_o   (timer_0_irq)
		);

endmodule