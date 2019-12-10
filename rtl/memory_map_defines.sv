// ITCM
`define ITCM_SIZE (16*1024) // 16 KB
`define ITCM_START (32'h8000_0000)
`define ITCM_MASK (`ITCM_SIZE-1)

// DTCM
`define DTCM_SIZE (16*1024) // 16 KB
`define DTCM_START (32'h9000_0000)
`define DTCM_MASK (`DTCM_SIZE-1)

// First instruction executed is at 0x0 + 0x80
`define BOOT_ADDR `ITCM_START

// Address to jump to when entering Debug Mode
`define DM_HALT_ADDR (32'h00000000)

// Address to jump to when an exception occurs while in Debug Mode
`define DM_EXCEPTION_ADDR (32'h00000000)

// On-Chip Peripherals
`define PERI_SIZE (32'h1e00_0000)
`define PERI_START (32'h0200_0000)
`define PERI_MASK (`PERI_SIZE-1)