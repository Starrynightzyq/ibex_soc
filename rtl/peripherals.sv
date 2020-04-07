
`include "memory_map_defines.sv"

module peripherals (
	input clk,    // Clock
	input ref_clock, // uart ref clk
	// input clk_en, // Clock Enable
	input rst_n,  // Asynchronous reset active low
	
	// On-Chip Peripherals arbiter
	XBAR_TCDM_BUS.Slave peri_bus,

	// debug apb master
    APB_BUS.Master debug_master,
    input logic sel_fll_clk_i,
    input  logic [7:0] soc_jtag_reg_i,
    output logic [7:0] soc_jtag_reg_o,

    // Interrupt outputs
    output  logic       irq_timer_o,
    output  logic       irq_external_o,

	input  logic        uart_0_rx_i,
	output logic        uart_0_tx_o
);

    parameter ADDR_WIDTH     = 32;
    parameter DATA_WIDTH     = 32;
    parameter BE_WIDTH       = DATA_WIDTH/8;
    parameter ID_WIDTH       = 10;
    parameter AUX_WIDTH      = 8;

	APB_BUS core_data_bus();
	APB_BUS gpio_apb_bus();
	APB_BUS uart_apb_bus();
	APB_BUS timer_apb_bus();
    APB_BUS soc_ctrl_master();

	(*mark_debug ="true"*)logic uart_0_irq;
	(*mark_debug ="true"*)logic [3:0] timer_0_irq;
	logic timer_0_irq_hold;

	// irq signals
	assign irq_external_o = timer_0_irq_hold;


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
			.data_req_i     (peri_bus.req),
			.data_add_i     (peri_bus.add),
			.data_wen_i     (peri_bus.wen),
			.data_wdata_i   (peri_bus.wdata),
			.data_be_i      (peri_bus.be),
			.data_aux_i     (),
			.data_ID_i      (),
			.data_gnt_o     (peri_bus.gnt),

			.data_r_valid_o (peri_bus.r_valid),
			.data_r_rdata_o (peri_bus.r_rdata),
			.data_r_opc_o   (peri_bus.gnt),
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

	periph_bus_wrap #(
			.APB_ADDR_WIDTH(ADDR_WIDTH),
			.APB_DATA_WIDTH(DATA_WIDTH)
		) inst_periph_bus_wrap (
			.clk_i        (clk_i),
			.rst_ni       (rst_ni),
			.apb_slave    (core_data_bus),
			.gpio_master  (gpio_apb_bus),
			.uart_master  (uart_apb_bus),
			.timer_master (timer_apb_bus),
			.soc_ctrl_master(soc_ctrl_master),
			.debug_master   (debug_master)
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
	hold #(
			.HOLD_TIME(60)
		) inst_hold (
			.clk     (clk),
			.rst_n   (rst_n),
			.trick_i (timer_0_irq[1]),
			.trick_o (timer_0_irq_hold)
		);

	apb_soc_ctrl #(
		.APB_ADDR_WIDTH(),
		.NB_CLUSTERS(),
		.NB_CORES(),
		.JTAG_REG_SIZE()
	) inst_apb_soc_ctrl (
		.HCLK                   (clk),
		.HRESETn                (rst_n),

		.PADDR                  (soc_ctrl_master.paddr),
		.PWDATA                 (soc_ctrl_master.pwdata),
		.PWRITE                 (soc_ctrl_master.pwrite),
		.PSEL                   (soc_ctrl_master.psel),
		.PENABLE                (soc_ctrl_master.penable),
		.PRDATA                 (soc_ctrl_master.prdata),
		.PREADY                 (soc_ctrl_master.pready),
		.PSLVERR                (soc_ctrl_master.pslverr),

		.sel_fll_clk_i          (sel_fll_clk_i),

		.boot_l2_i              (boot_l2_i), /* no connect */
		.bootsel_i              (bootsel_i), /* no connect */

		.pad_cfg                (pad_cfg), /* no connect */
		.pad_mux                (pad_mux), /* no connect */
		
		.soc_jtag_reg_i         (soc_jtag_reg_i),
		.soc_jtag_reg_o         (soc_jtag_reg_o),

		.fc_bootaddr_o          (fc_bootaddr_o), /* no connect */
		.fc_fetchen_o           (fc_fetchen_o), /* no connect */
		.sel_hyper_axi_o        (sel_hyper_axi_o), /* no connect */
		.cluster_pow_o          (cluster_pow_o), /* no connect */
		.cluster_byp_o          (cluster_byp_o), /* no connect */
		.cluster_boot_addr_o    (cluster_boot_addr_o), /* no connect */
		.cluster_fetch_enable_o (cluster_fetch_enable_o), /* no connect */
		.cluster_rstn_o         (cluster_rstn_o), /* no connect */
		.cluster_irq_o          (cluster_irq_o)  /* no connect */
	);


endmodule