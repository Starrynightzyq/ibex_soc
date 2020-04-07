// ITCM
`define ITCM_SIZE (64*1024) // 64 KB
`define ITCM_START (32'h8000_0000)
`define ITCM_END (`ITCM_START + `ITCM_SIZE -1)
`define ITCM_MASK (`ITCM_SIZE-1)

// DTCM
`define DTCM_SIZE (64*1024) // 64 KB
`define DTCM_START (32'h9000_0000)
`define DTCM_END (`DTCM_START + `DTCM_SIZE - 1)
`define DTCM_MASK (`DTCM_SIZE-1)

// First instruction executed is at 0x0 + 0x80
`define BOOT_ADDR `ITCM_START

// Address to jump to when entering Debug Mode
`define DM_HALT_ADDR (32'h00000000)

// Address to jump to when an exception occurs while in Debug Mode
`define DM_EXCEPTION_ADDR (32'h00000000)

// On-Chip Peripherals
// `define PERI_SIZE (32'h1e00_0000)
`define PERI_START (32'h0200_0000)
`define PERI_END (32'h1FFF_FFFF)
`define PERI_SIZE (`PERI_END - `PERI_START + 1)
`define PERI_MASK (`PERI_SIZE-1)

// apb connect
`define APB_ASSIGN_SLAVE(lhs, rhs)     \
    assign lhs.paddr    = rhs.paddr;   \
    assign lhs.pwdata   = rhs.pwdata;  \
    assign lhs.pwrite   = rhs.pwrite;  \
    assign lhs.psel     = rhs.psel;    \
    assign lhs.penable  = rhs.penable; \
    assign rhs.prdata   = lhs.prdata;  \
    assign rhs.pready   = lhs.pready;  \
    assign rhs.pslverr  = lhs.pslverr

`define APB_ASSIGN_MASTER(lhs, rhs) `APB_ASSIGN_SLAVE(rhs, lhs)

// XBAR connect
`define XBAR_ASSIGN_SLAVE(lhs, rhs)   \
    assign lhs.req     = rhs.req;     \
    assign lhs.add     = rhs.add;     \
    assign lhs.wen     = rhs.wen;     \
    assign lhs.wdata   = rhs.wdata;   \
    assign lhs.be      = rhs.be;      \
    assign rhs.gnt     = lhs.gnt;     \
    assign rhs.r_opc   = lhs.r_opc;   \
    assign rhs.r_rdata = lhs.r_rdata; \
    assign rhs.r_valid = lhs.r_valid

`define XBAR_ASSIGN_MASTER(lhs, rhs) `XBAR_ASSIGN_SLAVE(rhs, lhs)

// apb slaver number
`define NB_MASTER 5

`define GPIO_START_ADDR  32'h1001_2000
`define GPIO_END_ADDR    32'h1001_2FFF

`define UART_START_ADDR  32'h1001_3000
`define UART_END_ADDR    32'h1001_3FFF

`define TIMER_START_ADDR 32'h1002_3000
`define TIMER_END_ADDR   32'h1002_3FFF

`define SOC_CTRL_START_ADDR 32'h1002_3000
`define SOC_CTRL_END_ADDR   32'h1002_3FFF

`define DEBUG_START_ADDR 32'h1002_3000
`define DEBUG_END_ADDR   32'h1002_3FFF

// debug
`define DMI_JTAG_IDCODE  32'h249511C3