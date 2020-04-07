
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# ibex_core_axi_wallpaper, ram_axi2_wallpaper

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
   set_property BOARD_PART digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: itcm
proc create_hier_cell_itcm { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_itcm() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 sa_axi
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 sb_axi

  # Create pins
  create_bd_pin -dir I -type clk axi_aclk
  create_bd_pin -dir I -type rst axi_aresetn

  # Create instance: blk_itcm, and set properties
  set blk_itcm [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_itcm ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {8} \
   CONFIG.Coe_File {../../../../../../../rtl/instr_rom_init/instr_rom_init.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Fill_Remaining_Memory_Locations {true} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {16384} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_itcm

  # Create instance: ram_axi2_wallpaper_0, and set properties
  set block_name ram_axi2_wallpaper
  set block_cell_name ram_axi2_wallpaper_0
  if { [catch {set ram_axi2_wallpaper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ram_axi2_wallpaper_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.MAX_BURST_LENGTH {256} \
 ] [get_bd_intf_pins /itcm/ram_axi2_wallpaper_0/sa_axi]

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.MAX_BURST_LENGTH {256} \
 ] [get_bd_intf_pins /itcm/ram_axi2_wallpaper_0/sb_axi]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins sa_axi] [get_bd_intf_pins ram_axi2_wallpaper_0/sa_axi]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins sb_axi] [get_bd_intf_pins ram_axi2_wallpaper_0/sb_axi]

  # Create port connections
  connect_bd_net -net axi_aclk_1 [get_bd_pins axi_aclk] [get_bd_pins blk_itcm/clka] [get_bd_pins blk_itcm/clkb] [get_bd_pins ram_axi2_wallpaper_0/axi_aclk]
  connect_bd_net -net axi_aresetn_1 [get_bd_pins axi_aresetn] [get_bd_pins ram_axi2_wallpaper_0/axi_aresetn]
  connect_bd_net -net blk_itcm_douta [get_bd_pins blk_itcm/douta] [get_bd_pins ram_axi2_wallpaper_0/dina]
  connect_bd_net -net blk_itcm_doutb [get_bd_pins blk_itcm/doutb] [get_bd_pins ram_axi2_wallpaper_0/dinb]
  connect_bd_net -net ram_axi2_wallpaper_0_addra [get_bd_pins blk_itcm/addra] [get_bd_pins ram_axi2_wallpaper_0/addra]
  connect_bd_net -net ram_axi2_wallpaper_0_addrb [get_bd_pins blk_itcm/addrb] [get_bd_pins ram_axi2_wallpaper_0/addrb]
  connect_bd_net -net ram_axi2_wallpaper_0_douta [get_bd_pins blk_itcm/dina] [get_bd_pins ram_axi2_wallpaper_0/douta]
  connect_bd_net -net ram_axi2_wallpaper_0_doutb [get_bd_pins blk_itcm/dinb] [get_bd_pins ram_axi2_wallpaper_0/doutb]
  connect_bd_net -net ram_axi2_wallpaper_0_ena [get_bd_pins blk_itcm/ena] [get_bd_pins ram_axi2_wallpaper_0/ena]
  connect_bd_net -net ram_axi2_wallpaper_0_enb [get_bd_pins blk_itcm/enb] [get_bd_pins ram_axi2_wallpaper_0/enb]
  connect_bd_net -net ram_axi2_wallpaper_0_wea [get_bd_pins blk_itcm/wea] [get_bd_pins ram_axi2_wallpaper_0/wea]
  connect_bd_net -net ram_axi2_wallpaper_0_web [get_bd_pins blk_itcm/web] [get_bd_pins ram_axi2_wallpaper_0/web]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: dtcm
proc create_hier_cell_dtcm { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_dtcm() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI

  # Create pins
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -type rst s_axi_aresetn

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {0} \
 ] $axi_bram_ctrl_0

  # Create instance: blk_dtcm, and set properties
  set blk_dtcm [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_dtcm ]
  set_property -dict [ list \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
 ] $blk_dtcm

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S_AXI] [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_dtcm/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTB [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB] [get_bd_intf_pins blk_dtcm/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: clk_and_rst
proc create_hier_cell_clk_and_rst { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_clk_and_rst() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -type clk clk_100MHz
  create_bd_pin -dir O -type clk clk_20M
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn
  create_bd_pin -dir I -type rst reset

  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {193.154} \
   CONFIG.CLKOUT1_PHASE_ERROR {109.126} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {20.000} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {8.500} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {42.500} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz

  # Create instance: rst_clk_wiz_100M, and set properties
  set rst_clk_wiz_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_100M ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $rst_clk_wiz_100M

  # Create port connections
  connect_bd_net -net clk_100MHz_1 [get_bd_pins clk_100MHz] [get_bd_pins clk_wiz/clk_in1]
  connect_bd_net -net clk_wiz_clk_out1 [get_bd_pins clk_20M] [get_bd_pins clk_wiz/clk_out1] [get_bd_pins rst_clk_wiz_100M/slowest_sync_clk]
  connect_bd_net -net clk_wiz_locked [get_bd_pins clk_wiz/locked] [get_bd_pins rst_clk_wiz_100M/dcm_locked]
  connect_bd_net -net reset_1 [get_bd_pins reset] [get_bd_pins clk_wiz/resetn] [get_bd_pins rst_clk_wiz_100M/ext_reset_in]
  connect_bd_net -net rst_clk_wiz_100M_interconnect_aresetn [get_bd_pins interconnect_aresetn] [get_bd_pins rst_clk_wiz_100M/interconnect_aresetn]
  connect_bd_net -net rst_clk_wiz_100M_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins rst_clk_wiz_100M/peripheral_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set dip_switches_16bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 dip_switches_16bits ]
  set led_16bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 led_16bits ]
  set usb_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 usb_uart ]

  # Create ports
  set clk_100MHz [ create_bd_port -dir I -type clk clk_100MHz ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $clk_100MHz
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset

  # Create instance: GND, and set properties
  set GND [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {15} \
 ] $GND

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_GPIO2_WIDTH {16} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
   CONFIG.C_IS_DUAL {1} \
   CONFIG.GPIO2_BOARD_INTERFACE {dip_switches_16bits} \
   CONFIG.GPIO_BOARD_INTERFACE {led_16bits} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_0

  # Create instance: axi_intc_0, and set properties
  set axi_intc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 axi_intc_0 ]
  set_property -dict [ list \
   CONFIG.C_IRQ_IS_LEVEL {0} \
 ] $axi_intc_0

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {115200} \
   CONFIG.UARTLITE_BOARD_INTERFACE {usb_uart} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uartlite_0

  # Create instance: clk_and_rst
  create_hier_cell_clk_and_rst [current_bd_instance .] clk_and_rst

  # Create instance: dtcm
  create_hier_cell_dtcm [current_bd_instance .] dtcm

  # Create instance: ibex_core_axi_wallpaper_0, and set properties
  set block_name ibex_core_axi_wallpaper
  set block_cell_name ibex_core_axi_wallpaper_0
  if { [catch {set ibex_core_axi_wallpaper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ibex_core_axi_wallpaper_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.MAX_BURST_LENGTH {256} \
 ] [get_bd_intf_pins /ibex_core_axi_wallpaper_0/data_axi]

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.MAX_BURST_LENGTH {256} \
 ] [get_bd_intf_pins /ibex_core_axi_wallpaper_0/instr_axi]

  # Create instance: ibex_core_axi_wallpaper_0_axi_periph, and set properties
  set ibex_core_axi_wallpaper_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ibex_core_axi_wallpaper_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
 ] $ibex_core_axi_wallpaper_0_axi_periph

  # Create instance: ibex_core_axi_wallpaper_0_axi_periph_1, and set properties
  set ibex_core_axi_wallpaper_0_axi_periph_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ibex_core_axi_wallpaper_0_axi_periph_1 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {5} \
 ] $ibex_core_axi_wallpaper_0_axi_periph_1

  # Create instance: itcm
  create_hier_cell_itcm [current_bd_instance .] itcm

  # Create instance: vcc, and set properties
  set vcc [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 vcc ]

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO [get_bd_intf_ports led_16bits] [get_bd_intf_pins axi_gpio_0/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO2 [get_bd_intf_ports dip_switches_16bits] [get_bd_intf_pins axi_gpio_0/GPIO2]
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports usb_uart] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net ibex_core_axi_wallpaper_0_axi_periph_1_M00_AXI [get_bd_intf_pins ibex_core_axi_wallpaper_0_axi_periph_1/M00_AXI] [get_bd_intf_pins itcm/sb_axi]
  connect_bd_intf_net -intf_net ibex_core_axi_wallpaper_0_axi_periph_1_M01_AXI [get_bd_intf_pins dtcm/S_AXI] [get_bd_intf_pins ibex_core_axi_wallpaper_0_axi_periph_1/M01_AXI]
  connect_bd_intf_net -intf_net ibex_core_axi_wallpaper_0_axi_periph_1_M02_AXI [get_bd_intf_pins axi_uartlite_0/S_AXI] [get_bd_intf_pins ibex_core_axi_wallpaper_0_axi_periph_1/M02_AXI]
  connect_bd_intf_net -intf_net ibex_core_axi_wallpaper_0_axi_periph_1_M03_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins ibex_core_axi_wallpaper_0_axi_periph_1/M03_AXI]
  connect_bd_intf_net -intf_net ibex_core_axi_wallpaper_0_axi_periph_1_M04_AXI [get_bd_intf_pins axi_intc_0/s_axi] [get_bd_intf_pins ibex_core_axi_wallpaper_0_axi_periph_1/M04_AXI]
  connect_bd_intf_net -intf_net ibex_core_axi_wallpaper_0_axi_periph_M00_AXI [get_bd_intf_pins ibex_core_axi_wallpaper_0_axi_periph/M00_AXI] [get_bd_intf_pins itcm/sa_axi]
  connect_bd_intf_net -intf_net ibex_core_axi_wallpaper_0_data_axi [get_bd_intf_pins ibex_core_axi_wallpaper_0/data_axi] [get_bd_intf_pins ibex_core_axi_wallpaper_0_axi_periph_1/S00_AXI]
  connect_bd_intf_net -intf_net ibex_core_axi_wallpaper_0_instr_axi [get_bd_intf_pins ibex_core_axi_wallpaper_0/instr_axi] [get_bd_intf_pins ibex_core_axi_wallpaper_0_axi_periph/S00_AXI]

  # Create port connections
  connect_bd_net -net axi_gpio_0_ip2intc_irpt [get_bd_pins axi_gpio_0/ip2intc_irpt] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net axi_intc_0_irq [get_bd_pins axi_intc_0/irq] [get_bd_pins ibex_core_axi_wallpaper_0/irq_external_i]
  connect_bd_net -net axi_uartlite_0_interrupt [get_bd_pins axi_uartlite_0/interrupt] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net clk_100MHz_1 [get_bd_ports clk_100MHz] [get_bd_pins clk_and_rst/clk_100MHz]
  connect_bd_net -net clk_wiz_clk_out1 [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_intc_0/s_axi_aclk] [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins clk_and_rst/clk_20M] [get_bd_pins dtcm/s_axi_aclk] [get_bd_pins ibex_core_axi_wallpaper_0/axi_aclk] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph/ACLK] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph/M00_ACLK] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph/S00_ACLK] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph_1/ACLK] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph_1/M00_ACLK] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph_1/M01_ACLK] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph_1/M02_ACLK] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph_1/M03_ACLK] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph_1/M04_ACLK] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph_1/S00_ACLK] [get_bd_pins itcm/axi_aclk]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_and_rst/reset]
  connect_bd_net -net rst_clk_wiz_100M_interconnect_aresetn [get_bd_pins clk_and_rst/interconnect_aresetn] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph/ARESETN] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph_1/ARESETN]
  connect_bd_net -net rst_clk_wiz_100M_peripheral_aresetn [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_intc_0/s_axi_aresetn] [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins clk_and_rst/peripheral_aresetn] [get_bd_pins dtcm/s_axi_aresetn] [get_bd_pins ibex_core_axi_wallpaper_0/axi_aresetn] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph/M00_ARESETN] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph/S00_ARESETN] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph_1/M00_ARESETN] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph_1/M01_ARESETN] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph_1/M02_ARESETN] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph_1/M03_ARESETN] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph_1/M04_ARESETN] [get_bd_pins ibex_core_axi_wallpaper_0_axi_periph_1/S00_ARESETN] [get_bd_pins itcm/axi_aresetn]
  connect_bd_net -net vcc_dout [get_bd_pins ibex_core_axi_wallpaper_0/fetch_enable_i] [get_bd_pins vcc/dout]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins axi_intc_0/intr] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins GND/dout] [get_bd_pins ibex_core_axi_wallpaper_0/debug_req_i] [get_bd_pins ibex_core_axi_wallpaper_0/irq_fast_i] [get_bd_pins ibex_core_axi_wallpaper_0/irq_nm_i] [get_bd_pins ibex_core_axi_wallpaper_0/irq_software_i] [get_bd_pins ibex_core_axi_wallpaper_0/irq_timer_i]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x90000000 [get_bd_addr_spaces ibex_core_axi_wallpaper_0/data_axi] [get_bd_addr_segs dtcm/axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00001000 -offset 0x10012000 [get_bd_addr_spaces ibex_core_axi_wallpaper_0/data_axi] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces ibex_core_axi_wallpaper_0/data_axi] [get_bd_addr_segs axi_intc_0/S_AXI/Reg] SEG_axi_intc_0_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x10013000 [get_bd_addr_spaces ibex_core_axi_wallpaper_0/data_axi] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x80000000 [get_bd_addr_spaces ibex_core_axi_wallpaper_0/data_axi] [get_bd_addr_segs itcm/ram_axi2_wallpaper_0/sb_axi/reg0] SEG_ram_axi2_wallpaper_0_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x80000000 [get_bd_addr_spaces ibex_core_axi_wallpaper_0/instr_axi] [get_bd_addr_segs itcm/ram_axi2_wallpaper_0/sa_axi/reg0] SEG_ram_axi2_wallpaper_0_reg0


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


