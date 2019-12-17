// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

/**
 * Single-port RAM with 1 cycle read/write delay, 32 bit words
 */

`define SRAM_INIT_FILE uart.vmem

module ram_2p #(
    parameter int Depth = 128,
    parameter simple_ram = 0
) (
    input               clk_i,
    input               rst_ni,

    input               req_i_0,
    input               we_i_0,
    input        [ 3:0] be_i_0,
    input        [31:0] addr_i_0,
    input        [31:0] wdata_i_0,
    output logic [31:0] rdata_o_0,
    output logic        rvalid_o_0,

    input               req_i_1,
    input               we_i_1,
    input        [ 3:0] be_i_1,
    input        [31:0] addr_i_1,
    input        [31:0] wdata_i_1,
    output logic [31:0] rdata_o_1,
    output logic        rvalid_o_1
);

  localparam int Aw = $clog2(Depth);

  logic [Aw-1:0] addr_idx_0;
  assign addr_idx_0 = addr_i_0[Aw-1+2:2];

  logic [Aw-1:0] addr_idx_1;
  assign addr_idx_1 = addr_i_1[Aw-1+2:2];

  logic [31-Aw:0] unused_addr_parts;
  assign unused_addr_parts = {addr_i_0[31:Aw+2], addr_i_0[1:0]};

generate
  if (simple_ram) begin

    (* ram_style = "block" *)logic [31:0] mem [Depth]; 

    localparam MEM_FILE = `"`SRAM_INIT_FILE`";
    initial begin
      $display("Initializing SRAM from %s", MEM_FILE);
      $readmemh(MEM_FILE, mem);
    end 

    always @(posedge clk_i) begin
      if (req_i_0) begin
        if (we_i_0) begin
          for (int i = 0; i < 4; i = i + 1) begin
            if (be_i_0[i] == 1'b1) begin
              mem[addr_idx_0][i*8 +: 8] <= wdata_i_0[i*8 +: 8];
            end
          end
        end
        rdata_o_0 <= mem[addr_idx_0];
      end
    end

    always @(posedge clk_i) begin
      if (req_i_1) begin
        rdata_o_1 <= mem[addr_idx_1];
      end
    end

  end else begin 

    logic [3:0] wea;
    logic [3:0] web;

    assign wea = (we_i_0) ? be_i_0 : 4'b0;
    assign web = (we_i_1) ? be_i_1 : 4'b0;

    blk_mem_gen_0 block_ram_inst (
      .clka(clk_i),    // input wire clka
      .ena(req_i_0),      // input wire ena
      .wea(wea),      // input wire [3 : 0] wea
      .addra(addr_idx_0),  // input wire [13 : 0] addra
      .dina(wdata_i_0),    // input wire [31 : 0] dina
      .douta(rdata_o_0),  // output wire [31 : 0] douta

      .clkb(clk_i),    // input wire clkb
      .enb(req_i_0),      // input wire enb
      .web(web),      // input wire [3 : 0] web
      .addrb(addr_idx_1),  // input wire [13 : 0] addrb
      .dinb(wdata_i_1),    // input wire [31 : 0] dinb
      .doutb(rdata_o_1)  // output wire [31 : 0] doutb
    );

  end
endgenerate


  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      rvalid_o_0 <= '0;
    end else begin
      rvalid_o_0 <= req_i_0;
    end
  end

  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      rvalid_o_1 <= '0;
    end else begin
      rvalid_o_1 <= req_i_1;
    end
  end

endmodule

