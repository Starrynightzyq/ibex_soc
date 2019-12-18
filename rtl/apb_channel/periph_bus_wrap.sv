// Copyright 2018 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.


`include "../memory_map_defines.sv"

module periph_bus_wrap #(
    parameter APB_ADDR_WIDTH = 32,
    parameter APB_DATA_WIDTH = 32
) (
    input logic    clk_i,
    input logic    rst_ni,
    APB_BUS.Slave  apb_slave,
    APB_BUS.Master gpio_master,
    APB_BUS.Master uart_master,
    APB_BUS.Master timer_master
);

    localparam NB_MASTER = `NB_MASTER;

    logic [NB_MASTER-1:0][APB_ADDR_WIDTH-1:0] s_start_addr;
    logic [NB_MASTER-1:0][APB_ADDR_WIDTH-1:0] s_end_addr;

    APB_BUS #(
        .APB_ADDR_WIDTH(APB_ADDR_WIDTH),
        .APB_DATA_WIDTH(APB_DATA_WIDTH)
    ) s_masters[NB_MASTER-1:0]();

    APB_BUS #(
        .APB_ADDR_WIDTH ( APB_ADDR_WIDTH ),
        .APB_DATA_WIDTH ( APB_DATA_WIDTH )
    ) s_slave ();

    `APB_ASSIGN_SLAVE(s_slave, apb_slave);

    `APB_ASSIGN_MASTER(s_masters[0], gpio_master);
    assign s_start_addr[0] = `GPIO_START_ADDR;
    assign s_end_addr[0]   = `GPIO_END_ADDR;

    `APB_ASSIGN_MASTER(s_masters[1], uart_master);
    assign s_start_addr[1] = `UART_START_ADDR;
    assign s_end_addr[1]   = `UART_END_ADDR;

    `APB_ASSIGN_MASTER(s_masters[2], timer_master);
    assign s_start_addr[2] = `TIMER_START_ADDR;
    assign s_end_addr[2]   = `TIMER_END_ADDR;

    //********************************************************
    //**************** SOC BUS *******************************
    //********************************************************
    apb_node_wrap #(
        .NB_MASTER      ( NB_MASTER      ),
        .APB_ADDR_WIDTH ( APB_ADDR_WIDTH ),
        .APB_DATA_WIDTH ( APB_DATA_WIDTH )
    ) apb_node_wrap_i (
        .clk_i        ( clk_i        ),
        .rst_ni       ( rst_ni       ),

        .apb_slave    ( s_slave      ),
        .apb_masters  ( s_masters    ),

        .start_addr_i ( s_start_addr ),
        .end_addr_i   ( s_end_addr   )
    );

endmodule
