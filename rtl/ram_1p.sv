// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

/**
 * Single-port RAM with 1 cycle read/write delay, 32 bit words
 */

`define SRAM_INIT_FILE uart.vmem

module ram_2p #(
    parameter int Depth = 128
) (
    input               clk_i,
    input               rst_ni,

    input               req_i,
    input               we_i,
    input        [ 3:0] be_i,
    input        [31:0] addr_i,
    input        [31:0] wdata_i,
    output logic        rvalid_o,
    output logic [31:0] rdata_o,

    input               req_i_1,
    input        [31:0] addr_i_1,
    output logic [31:0] rdata_o_1,
    output logic        rvalid_o_1
);

  localparam int Aw = $clog2(Depth);

  logic [31:0] mem [Depth];

  logic [Aw-1:0] addr_idx;
  assign addr_idx = addr_i[Aw-1+2:2];

  logic [Aw-1:0] addr_idx_1;
  assign addr_idx_1 = addr_i_1[Aw-1+2:2];

  logic [31-Aw:0] unused_addr_parts;
  assign unused_addr_parts = {addr_i[31:Aw+2], addr_i[1:0]};

  always @(posedge clk_i) begin
    if (req_i) begin
      if (we_i) begin
        for (int i = 0; i < 4; i = i + 1) begin
          if (be_i[i] == 1'b1) begin
            mem[addr_idx][i*8 +: 8] <= wdata_i[i*8 +: 8];
          end
        end
      end
      rdata_o <= mem[addr_idx];
    end
  end

  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      rvalid_o <= '0;
    end else begin
      rvalid_o <= req_i;
    end
  end

  always @(posedge clk_i) begin
    if (req_i_1) begin
      rdata_o_1 <= mem[addr_idx_1];
    end
  end

  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      rvalid_o_1 <= '0;
    end else begin
      rvalid_o_1 <= req_i_1;
    end
  end

  `ifdef VERILATOR
    export "DPI-C" task simutil_verilator_memload;

    task simutil_verilator_memload;
    input string file;
    $readmemh(file, mem);
    endtask
  `endif

  `ifdef SRAM_INIT_FILE
    localparam MEM_FILE = `"`SRAM_INIT_FILE`";
    initial begin
      $display("Initializing SRAM from %s", MEM_FILE);
      $readmemh(MEM_FILE, mem);
    end
  `endif
endmodule

