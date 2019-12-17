
`include "memory_map_defines.sv"

module complex_core (
	input clk,    // Clock
	(*mark_debug ="true"*)input rst_n,  // Asynchronous reset active low

	// On-Chip Peripherals arbiter
	output logic [31:0] peri_addr,
	output logic        peri_req,
	output logic        peri_write,
	output logic  [3:0] peri_be,
	output logic [31:0] peri_wdata,
	input  logic        peri_gnt,

	input  logic        peri_rvalid,
	input  logic [31:0] peri_rdata
	
);

  // Instruction connection to SRAM
  (*mark_debug ="true"*)logic        instr_req;
  (*mark_debug ="true"*)logic        instr_gnt;
  (*mark_debug ="true"*)logic        instr_rvalid;
  (*mark_debug ="true"*)logic [31:0] instr_addr;
  (*mark_debug ="true"*)logic [31:0] instr_rdata;

  // Data connection to SRAM
  (*mark_debug ="true"*)logic        data_req;
  (*mark_debug ="true"*)logic        data_gnt;
  (*mark_debug ="true"*)logic        data_rvalid;
  (*mark_debug ="true"*)logic        data_we;
  (*mark_debug ="true"*)logic  [3:0] data_be;
  (*mark_debug ="true"*)logic [31:0] data_addr;
  (*mark_debug ="true"*)logic [31:0] data_wdata;
  (*mark_debug ="true"*)logic [31:0] data_rdata;

  // SRAM arbiter
  logic [31:0] instr_mem_addr;
  logic        instr_mem_req;
  logic        instr_mem_write;
  logic  [3:0] instr_mem_be;
  logic [31:0] instr_mem_wdata;
  logic        instr_mem_rvalid;
  logic [31:0] instr_mem_rdata;

  logic [31:0] instr_mem_addr_1;
  logic        instr_mem_req_1;
  logic        instr_mem_write_1;
  logic  [3:0] instr_mem_be_1;
  logic [31:0] instr_mem_wdata_1;
  logic        instr_mem_rvalid_1;
  logic [31:0] instr_mem_rdata_1;

  // data RAM arbiter
  logic [31:0] data_mem_addr;
  logic        data_mem_req;
  logic        data_mem_write;
  logic  [3:0] data_mem_be;
  logic [31:0] data_mem_wdata;
  logic        data_mem_rvalid;
  logic [31:0] data_mem_rdata;




  ibex_core #(
     .DmHaltAddr(`DM_HALT_ADDR),
     .DmExceptionAddr(`DM_EXCEPTION_ADDR)
  ) u_core (
     .clk_i                 (clk),
     .rst_ni                (rst_n),

     .test_en_i             ('b0),

     .hart_id_i             (32'b0),
     // First instruction executed is at 0x0 + 0x80
     .boot_addr_i           (`BOOT_ADDR),

     .instr_req_o           (instr_req),
     .instr_gnt_i           (instr_gnt),
     .instr_rvalid_i        (instr_rvalid),
     .instr_addr_o          (instr_addr),
     .instr_rdata_i         (instr_rdata),
     .instr_err_i           ('b0),

     .data_req_o            (data_req),
     .data_gnt_i            (data_gnt),
     .data_rvalid_i         (data_rvalid),
     .data_we_o             (data_we),
     .data_be_o             (data_be),
     .data_addr_o           (data_addr),
     .data_wdata_o          (data_wdata),
     .data_rdata_i          (data_rdata),
     .data_err_i            ('b0),

     .irq_software_i        (1'b0),
     .irq_timer_i           (1'b0),
     .irq_external_i        (1'b0),
     .irq_fast_i            (15'b0),
     .irq_nm_i              (1'b0),

     .debug_req_i           ('b0),

     .fetch_enable_i        ('b1),
     .core_sleep_o          ()
  );

  // Connect Ibex to SRAM
  always_comb begin
    instr_mem_req        = 1'b0;
    instr_mem_addr       = 32'b0;
    instr_mem_write      = 1'b0;
    instr_mem_be         = 4'b0;
    instr_mem_wdata      = 32'b0;

    instr_mem_req_1      = 1'b0;
    instr_mem_addr_1     = 32'b0;
    instr_mem_write_1    = 1'b0;
    instr_mem_be_1       = 4'b0;
    instr_mem_wdata_1    = 32'b0;

    data_mem_req         = 1'b0;
    data_mem_addr        = 32'b0;
    data_mem_write       = 1'b0;
    data_mem_be          = 4'b0;
    data_mem_wdata       = 32'b0;
    
    peri_req             = 1'b0;
    peri_addr            = 32'b0;
    peri_write           = 1'b0;
    peri_be              = 4'b0;
    peri_wdata           = 32'b0;

    if (instr_req) begin
      instr_mem_req        = (instr_addr & ~`ITCM_MASK) == `ITCM_START;
      instr_mem_addr       = instr_addr - (`ITCM_START);
    end

    if (data_req) begin
      data_mem_req        = (data_addr & ~`DTCM_MASK) == `DTCM_START;
      data_mem_write      = data_we;
      data_mem_be         = data_be;
      data_mem_addr       = data_addr - (`DTCM_START);
      data_mem_wdata      = data_wdata;

      instr_mem_req_1     = (data_addr & ~`ITCM_MASK) == `ITCM_START;
      instr_mem_addr_1    = data_addr - (`ITCM_START);

      peri_req            = (data_addr & ~`PERI_MASK) == `PERI_START;
      peri_write          = data_we;
      peri_be             = data_be;
      peri_addr           = data_addr - (`PERI_START);
      peri_wdata          = data_wdata;
    end
  end

  // SRAM block for instruction and data storage
  ram_2p #(
    .Depth(`ITCM_SIZE / 4)
  ) instr_ram (
    .clk_i     ( clk              ),
    .rst_ni    ( rst_n            ),

    .req_i_0     ( instr_mem_req    ),
    .we_i_0      ( 1'b0             ),
    .be_i_0      ( 4'b0             ),
    .addr_i_0    ( instr_mem_addr   ),
    .wdata_i_0   ( 32'b0            ),
    .rdata_o_0   ( instr_mem_rdata  ),
    .rvalid_o_0  ( instr_mem_rvalid ),

    // itcm read data port 2
    .req_i_1     ( instr_mem_req_1   ),
    .we_i_1      ( 1'b0              ),
    .be_i_1      ( 4'b0              ),
    .addr_i_1    ( instr_mem_addr_1  ),
    .wdata_i_1   ( 32'b0             ),
    .rdata_o_1   ( instr_mem_rdata_1 ),
    .rvalid_o_1  ( instr_mem_rvalid_1)
  );


  data_ram #(
    .Depth(`DTCM_SIZE / 4)
  ) data_ram (
    .clk_i     ( clk             ),
    .rst_ni    ( rst_n           ),
    .req_i     ( data_mem_req    ),
    .we_i      ( data_mem_write  ),
    .be_i      ( data_mem_be     ),
    .addr_i    ( data_mem_addr   ),
    .wdata_i   ( data_mem_wdata  ),
    .rvalid_o  ( data_mem_rvalid ),
    .rdata_o   ( data_mem_rdata  )
  );

  // SRAM to Ibex
  // instruction rdata rvalid
  assign instr_rdata    = instr_mem_rdata;
  assign instr_rvalid   = instr_mem_rvalid;

  // data rdata rvalid
  always_comb begin 
  	data_rdata = 32'h0;
  	if (data_mem_rvalid) begin
  		data_rdata = data_mem_rdata;
    end else if (instr_mem_rvalid_1) begin
      data_rdata = instr_mem_rdata_1;
    end else if (peri_rvalid) begin
  		data_rdata = peri_rdata;
  	end
  end

  always_comb begin 
  	if (!rst_n) begin
	  	data_rvalid = 'b0;
	    data_gnt    = 'b0;
  	end else begin 
	  	data_rvalid = data_mem_rvalid || instr_mem_rvalid_1 || peri_rvalid;
	    data_gnt    = data_mem_rvalid || instr_mem_rvalid_1 || peri_gnt;
  	end
  end

  // gnt
  always_comb begin 
  	if (!rst_n) begin
	    instr_gnt   = 'b0;
  	end else begin 
	    instr_gnt   = instr_mem_rvalid;
  	end
  end
  // always_ff @(posedge clk or negedge rst_n) begin
  //   if (!rst_n) begin
  //     instr_gnt    <= 'b0;
  //     // data_gnt     <= 'b0;
  //   end else begin
  //     instr_gnt    <= instr_mem_req;
  //     // data_gnt     <= data_mem_req || peri_req;
  //   end
  // end

endmodule