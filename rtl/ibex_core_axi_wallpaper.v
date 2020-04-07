// `include "memory_map_defines.sv"

module ibex_core_axi_wallpaper 
#(
    parameter DM_HALT_ADDR = 32'h00000000,
    parameter DM_EXCEPTION_ADDR = 32'h00000000,
    parameter BOOT_ADDR = 32'h8000_0000,

    parameter AXI_ADDR_WIDTH = 32,
    parameter AXI_DATA_WIDTH = 32,
    parameter AXI_ID_WIDTH   = 12,
    parameter AXI_USER_WIDTH = 4,
    parameter AXI_STRB_WIDTH = AXI_ADDR_WIDTH/8
)(
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_aclk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF data_axi:instr_axi, ASSOCIATED_RESET axi_aresetn" *)
    input  wire axi_aclk,    // Clock
    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi_aresetn RST" *)
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
    input  wire axi_aresetn,  // Asynchronous reset active low

    // interrupt
    input  wire irq_software_i,
    input  wire irq_timer_i,
    input  wire irq_external_i,
    input  wire [14:0] irq_fast_i,
    input  wire irq_nm_i,
    input  wire debug_req_i,

    // control
    input  wire fetch_enable_i,
    output wire core_sleep_o,


    // data bus
    output wire [AXI_ID_WIDTH-1:0] data_axi_awid, // Write address ID (optional)
    output wire [AXI_ADDR_WIDTH-1:0] data_axi_awaddr, // Write address (optional)
    output wire [7:0] data_axi_awlen, // Burst length (optional)
    output wire [2:0] data_axi_awsize, // Burst size (optional)
    output wire [1:0] data_axi_awburst, // Burst type (optional)
    output wire [0:0] data_axi_awlock, // Lock type (optional)
    output wire [3:0] data_axi_awcache, // Cache type (optional)
    output wire [2:0] data_axi_awprot, // Protection type (optional)
    output wire [3:0] data_axi_awregion, // Write address slave region (optional)
    output wire [3:0] data_axi_awqos, // Transaction Quality of Service token (optional)
    output wire [AXI_USER_WIDTH-1:0] data_axi_awuser, // Write address user sideband (optional)
    output wire data_axi_awvalid, // Write address valid (optional)
    input  wire data_axi_awready, // Write address ready (optional)

    // input [AXI_ID_WIDTH-1:0] data_axi_wid, // Write ID tag (optional)
    output wire [AXI_DATA_WIDTH-1:0] data_axi_wdata, // Write data (optional)
    output wire [AXI_STRB_WIDTH-1:0] data_axi_wstrb, // Write strobes (optional)
    output wire data_axi_wlast, // Write last beat (optional)
    output wire [AXI_USER_WIDTH-1:0] data_axi_wuser, // Write data user sideband (optional)
    output wire data_axi_wvalid, // Write valid (optional)
    input  wire data_axi_wready, // Write ready (optional)

    input  wire [AXI_ID_WIDTH-1:0] data_axi_bid, // Response ID (optional)
    input  wire [1:0] data_axi_bresp, // Write response (optional)
    input  wire [AXI_USER_WIDTH-1:0] data_axi_buser, // Write response user sideband (optional)
    input  wire data_axi_bvalid, // Write response valid (optional)
    output wire data_axi_bready, // Write response ready (optional)

    output wire [AXI_ID_WIDTH-1:0] data_axi_arid, // Read address ID (optional)
    output wire [AXI_ADDR_WIDTH-1:0] data_axi_araddr, // Read address (optional)
    output wire [7:0] data_axi_arlen, // Burst length (optional)
    output wire [2:0] data_axi_arsize, // Burst size (optional)
    output wire [1:0] data_axi_arburst, // Burst type (optional)
    output wire [0:0] data_axi_arlock, // Lock type (optional)
    output wire [3:0] data_axi_arcache, // Cache type (optional)
    output wire [2:0] data_axi_arprot, // Protection type (optional)
    output wire [3:0] data_axi_arregion, // Read address slave region (optional)
    output wire [3:0] data_axi_arqos, // Quality of service token (optional)
    output wire [AXI_USER_WIDTH-1:0] data_axi_aruser, // Read address user sideband (optional)
    output wire data_axi_arvalid, // Read address valid (optional)
    input  wire data_axi_arready, // Read address ready (optional)

    input  wire [AXI_ID_WIDTH-1:0] data_axi_rid, // Read ID tag (optional)
    input  wire [AXI_DATA_WIDTH-1:0] data_axi_rdata, // Read data (optional)
    input  wire [1:0] data_axi_rresp, // Read response (optional)
    input  wire data_axi_rlast, // Read last beat (optional)
    input  wire [AXI_USER_WIDTH-1:0] data_axi_ruser, // Read user sideband (optional)
    input  wire data_axi_rvalid, // Read valid (optional)
    output wire data_axi_rready, // Read ready (optional)  


    // instr bus
    output wire [AXI_ID_WIDTH-1:0] instr_axi_awid, // Write address ID (optional)
    output wire [AXI_ADDR_WIDTH-1:0] instr_axi_awaddr, // Write address (optional)
    output wire [7:0] instr_axi_awlen, // Burst length (optional)
    output wire [2:0] instr_axi_awsize, // Burst size (optional)
    output wire [1:0] instr_axi_awburst, // Burst type (optional)
    output wire [0:0] instr_axi_awlock, // Lock type (optional)
    output wire [3:0] instr_axi_awcache, // Cache type (optional)
    output wire [2:0] instr_axi_awprot, // Protection type (optional)
    output wire [3:0] instr_axi_awregion, // Write address slave region (optional)
    output wire [3:0] instr_axi_awqos, // Transaction Quality of Service token (optional)
    output wire [AXI_USER_WIDTH-1:0] instr_axi_awuser, // Write address user sideband (optional)
    output wire instr_axi_awvalid, // Write address valid (optional)
    input  wire instr_axi_awready, // Write address ready (optional)

    // input  wire [AXI_ID_WIDTH-1:0] instr_axi_wid, // Write ID tag (optional)
    output wire [AXI_DATA_WIDTH-1:0] instr_axi_wdata, // Write data (optional)
    output wire [AXI_STRB_WIDTH-1:0] instr_axi_wstrb, // Write strobes (optional)
    output wire instr_axi_wlast, // Write last beat (optional)
    output wire [AXI_USER_WIDTH-1:0] instr_axi_wuser, // Write data user sideband (optional)
    output wire instr_axi_wvalid, // Write valid (optional)
    input  wire instr_axi_wready, // Write ready (optional)

    input  wire [AXI_ID_WIDTH-1:0] instr_axi_bid, // Response ID (optional)
    input  wire [1:0] instr_axi_bresp, // Write response (optional)
    input  wire [AXI_USER_WIDTH-1:0] instr_axi_buser, // Write response user sideband (optional)
    input  wire instr_axi_bvalid, // Write response valid (optional)
    output wire instr_axi_bready, // Write response ready (optional)

    output wire [AXI_ID_WIDTH-1:0] instr_axi_arid, // Read address ID (optional)
    output wire [AXI_ADDR_WIDTH-1:0] instr_axi_araddr, // Read address (optional)
    output wire [7:0] instr_axi_arlen, // Burst length (optional)
    output wire [2:0] instr_axi_arsize, // Burst size (optional)
    output wire [1:0] instr_axi_arburst, // Burst type (optional)
    output wire [0:0] instr_axi_arlock, // Lock type (optional)
    output wire [3:0] instr_axi_arcache, // Cache type (optional)
    output wire [2:0] instr_axi_arprot, // Protection type (optional)
    output wire [3:0] instr_axi_arregion, // Read address slave region (optional)
    output wire [3:0] instr_axi_arqos, // Quality of service token (optional)
    output wire [AXI_USER_WIDTH-1:0] instr_axi_aruser, // Read address user sideband (optional)
    output wire instr_axi_arvalid, // Read address valid (optional)
    input  wire instr_axi_arready, // Read address ready (optional)

    input  wire [AXI_ID_WIDTH-1:0] instr_axi_rid, // Read ID tag (optional)
    input  wire [AXI_DATA_WIDTH-1:0] instr_axi_rdata, // Read data (optional)
    input  wire [1:0] instr_axi_rresp, // Read response (optional)
    input  wire instr_axi_rlast, // Read last beat (optional)
    input  wire [AXI_USER_WIDTH-1:0] instr_axi_ruser, // Read user sideband (optional)
    input  wire instr_axi_rvalid, // Read valid (optional)
    output wire instr_axi_rready // Read ready (optional)   
);

    // XBAR_TCDM_BUS core_instr_bus();
    // XBAR_TCDM_BUS core_data_bus();

    wire          core_instr_bus_req;
    wire [31:0]   core_instr_bus_add;
    wire          core_instr_bus_wen;
    wire [31:0]   core_instr_bus_wdata;
    wire [3:0]    core_instr_bus_be;
    wire          core_instr_bus_gnt;
    wire         core_instr_bus_r_opc;
    wire [31:0]  core_instr_bus_r_rdata;
    wire         core_instr_bus_r_valid;

    wire          core_data_bus_req;
    wire [31:0]   core_data_bus_add;
    wire          core_data_bus_wen;
    wire [31:0]   core_data_bus_wdata;
    wire [3:0]    core_data_bus_be;
    wire          core_data_bus_gnt;
    wire         core_data_bus_r_opc;
    wire [31:0]  core_data_bus_r_rdata;
    wire         core_data_bus_r_valid;

    ibex_core #(
            .DmHaltAddr(DM_HALT_ADDR),
            .DmExceptionAddr(DM_EXCEPTION_ADDR)
        ) inst_ibex_core (
            .clk_i          (axi_aclk),
            .rst_ni         (axi_aresetn),

            .test_en_i      ('b0),
            .hart_id_i      ('b0),
            // First instruction executed is at 0x0 + 0x80
            .boot_addr_i    (BOOT_ADDR),

            .instr_req_o    (core_instr_bus_req),
            .instr_gnt_i    (core_instr_bus_gnt),
            .instr_rvalid_i (core_instr_bus_r_valid),
            .instr_addr_o   (core_instr_bus_add),
            .instr_rdata_i  (core_instr_bus_r_rdata),
            .instr_err_i    (core_instr_bus_r_opc),

            .data_req_o     (core_data_bus_req),
            .data_gnt_i     (core_data_bus_gnt),
            .data_rvalid_i  (core_data_bus_r_valid),
            .data_we_o      (core_data_bus_wen),
            .data_be_o      (core_data_bus_be),
            .data_addr_o    (core_data_bus_add),
            .data_wdata_o   (core_data_bus_wdata),
            .data_rdata_i   (core_data_bus_r_rdata),
            .data_err_i     (core_data_bus_r_opc),

            .irq_software_i (irq_software_i),
            .irq_timer_i    (irq_timer_i),
            .irq_external_i (irq_external_i),
            .irq_fast_i     (irq_fast_i),
            .irq_nm_i       (irq_nm_i),
            .debug_req_i    (debug_req_i),

            .fetch_enable_i (fetch_enable_i),
            .core_sleep_o   (core_sleep_o)
        );

        lint_2_axi #(
            .ADDR_WIDTH(AXI_ADDR_WIDTH),
            .DATA_WIDTH(AXI_DATA_WIDTH),
            .BE_WIDTH(AXI_STRB_WIDTH),
            .ID_WIDTH(16),
            .USER_WIDTH(6),
            .AUX_WIDTH(8),
            .AXI_ID_WIDTH(AXI_ID_WIDTH),
            .REGISTERED_GRANT("FALSE")
        ) instr_lint_2_axi (
            // Clock and Reset
            .clk_i         (axi_aclk),
            .rst_ni        (axi_aresetn),

            // ---------------------------------------------------------
            // Lint Port Declarations ------------------------------
            // ---------------------------------------------------------
            .data_req_i    (core_instr_bus_req),
            .data_addr_i   (core_instr_bus_add),
            .data_we_i     ('b0),
            .data_wdata_i  ('b0),
            .data_be_i     ('b0),
            .data_ID_i     ('b0),
            .data_aux_i    ('b0),
            .data_gnt_o    (core_instr_bus_gnt),

            .data_rvalid_o (core_instr_bus_r_valid),
            .data_rdata_o  (core_instr_bus_r_rdata),
            .data_ropc_o   (core_instr_bus_r_opc),
            .data_raux_o   (),
            .data_rID_o    (),

            // ---------------------------------------------------------
            // AXI TARG Port Declarations ------------------------------
            // ---------------------------------------------------------
            //AXI write address bus -------------- // USED// -----------
            .aw_id_o       (instr_axi_awid),
            .aw_addr_o     (instr_axi_awaddr),
            .aw_len_o      (instr_axi_awlen),
            .aw_size_o     (instr_axi_awsize),
            .aw_burst_o    (instr_axi_awburst),
            .aw_lock_o     (instr_axi_awlock),
            .aw_cache_o    (instr_axi_awcache),
            .aw_prot_o     (instr_axi_awprot),
            .aw_region_o   (instr_axi_awregion),
            .aw_user_o     (instr_axi_awuser),
            .aw_qos_o      (instr_axi_awqos),
            .aw_valid_o    (instr_axi_awvalid),
            .aw_ready_i    (instr_axi_awready),
            // ---------------------------------------------------------

            //AXI write data bus -------------- // USED// --------------
            .w_data_o      (instr_axi_wdata),
            .w_strb_o      (instr_axi_wstrb),
            .w_last_o      (instr_axi_wlast),
            .w_user_o      (instr_axi_wuser),
            .w_valid_o     (instr_axi_wvalid),
            .w_ready_i     (instr_axi_wready),
            // ---------------------------------------------------------

            //AXI write response bus -------------- // USED// ----------
            .b_id_i        (instr_axi_bid),
            .b_resp_i      (instr_axi_bresp),
            .b_valid_i     (instr_axi_bvalid),
            .b_user_i      (instr_axi_buser),
            .b_ready_o     (instr_axi_bready),
            // ---------------------------------------------------------

            //AXI read address bus -------------------------------------
            .ar_id_o       (instr_axi_arid),
            .ar_addr_o     (instr_axi_araddr),
            .ar_len_o      (instr_axi_arlen),
            .ar_size_o     (instr_axi_arsize),
            .ar_burst_o    (instr_axi_arburst),
            .ar_lock_o     (instr_axi_arlock),
            .ar_cache_o    (instr_axi_arcache),
            .ar_prot_o     (instr_axi_arprot),
            .ar_region_o   (instr_axi_arregion),
            .ar_user_o     (instr_axi_aruser),
            .ar_qos_o      (instr_axi_arqos),
            .ar_valid_o    (instr_axi_arvalid),
            .ar_ready_i    (instr_axi_arready),
            // ---------------------------------------------------------

            //AXI read data bus ----------------------------------------
            .r_id_i        (instr_axi_rid),
            .r_data_i      (instr_axi_rdata),
            .r_resp_i      (instr_axi_rresp),
            .r_last_i      (instr_axi_rlast),
            .r_user_i      (instr_axi_ruser),
            .r_valid_i     (instr_axi_rvalid),
            .r_ready_o     (instr_axi_rready)
            // ---------------------------------------------------------
        );


        lint_2_axi #(
            .ADDR_WIDTH(AXI_ADDR_WIDTH),
            .DATA_WIDTH(AXI_DATA_WIDTH),
            .BE_WIDTH(AXI_STRB_WIDTH),
            .ID_WIDTH(16),
            .USER_WIDTH(6),
            .AUX_WIDTH(8),
            .AXI_ID_WIDTH(AXI_ID_WIDTH),
            .REGISTERED_GRANT("FALSE")
        ) data_lint_2_axi (
            // Clock and Reset
            .clk_i         (axi_aclk),
            .rst_ni        (axi_aresetn),

            // ---------------------------------------------------------
            // Lint Port Declarations ------------------------------
            // ---------------------------------------------------------
            .data_req_i    (core_data_bus_req),
            .data_addr_i   (core_data_bus_add),
            .data_we_i     (core_data_bus_wen),
            .data_wdata_i  (core_data_bus_wdata),
            .data_be_i     (core_data_bus_be),
            .data_ID_i     ('b0),
            .data_aux_i    ('b0),
            .data_gnt_o    (core_data_bus_gnt),

            .data_rvalid_o (core_data_bus_r_valid),
            .data_rdata_o  (core_data_bus_r_rdata),
            .data_ropc_o   (core_data_bus_r_opc),
            .data_raux_o   (),
            .data_rID_o    (),

            // ---------------------------------------------------------
            // AXI TARG Port Declarations ------------------------------
            // ---------------------------------------------------------
            //AXI write address bus -------------- // USED// -----------
            .aw_id_o       (data_axi_awid),
            .aw_addr_o     (data_axi_awaddr),
            .aw_len_o      (data_axi_awlen),
            .aw_size_o     (data_axi_awsize),
            .aw_burst_o    (data_axi_awburst),
            .aw_lock_o     (data_axi_awlock),
            .aw_cache_o    (data_axi_awcache),
            .aw_prot_o     (data_axi_awprot),
            .aw_region_o   (data_axi_awregion),
            .aw_user_o     (data_axi_awuser),
            .aw_qos_o      (data_axi_awqos),
            .aw_valid_o    (data_axi_awvalid),
            .aw_ready_i    (data_axi_awready),
            // ---------------------------------------------------------

            //AXI write data bus -------------- // USED// --------------
            .w_data_o      (data_axi_wdata),
            .w_strb_o      (data_axi_wstrb),
            .w_last_o      (data_axi_wlast),
            .w_user_o      (data_axi_wuser),
            .w_valid_o     (data_axi_wvalid),
            .w_ready_i     (data_axi_wready),
            // ---------------------------------------------------------

            //AXI write response bus -------------- // USED// ----------
            .b_id_i        (data_axi_bid),
            .b_resp_i      (data_axi_bresp),
            .b_valid_i     (data_axi_bvalid),
            .b_user_i      (data_axi_buser),
            .b_ready_o     (data_axi_bready),
            // ---------------------------------------------------------

            //AXI read address bus -------------------------------------
            .ar_id_o       (data_axi_arid),
            .ar_addr_o     (data_axi_araddr),
            .ar_len_o      (data_axi_arlen),
            .ar_size_o     (data_axi_arsize),
            .ar_burst_o    (data_axi_arburst),
            .ar_lock_o     (data_axi_arlock),
            .ar_cache_o    (data_axi_arcache),
            .ar_prot_o     (data_axi_arprot),
            .ar_region_o   (data_axi_arregion),
            .ar_user_o     (data_axi_aruser),
            .ar_qos_o      (data_axi_arqos),
            .ar_valid_o    (data_axi_arvalid),
            .ar_ready_i    (data_axi_arready),
            // ---------------------------------------------------------

            //AXI read data bus ----------------------------------------
            .r_id_i        (data_axi_rid),
            .r_data_i      (data_axi_rdata),
            .r_resp_i      (data_axi_rresp),
            .r_last_i      (data_axi_rlast),
            .r_user_i      (data_axi_ruser),
            .r_valid_i     (data_axi_rvalid),
            .r_ready_o     (data_axi_rready)
            // ---------------------------------------------------------
        );

endmodule