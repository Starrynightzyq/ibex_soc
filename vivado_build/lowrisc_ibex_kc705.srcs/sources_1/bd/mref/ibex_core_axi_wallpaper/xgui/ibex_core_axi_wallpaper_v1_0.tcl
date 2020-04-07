# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_STRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_USER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BOOT_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DM_EXCEPTION_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DM_HALT_ADDR" -parent ${Page_0}


}

proc update_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to update AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to validate AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_DATA_WIDTH { PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to update AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_DATA_WIDTH { PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to validate AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_ID_WIDTH { PARAM_VALUE.AXI_ID_WIDTH } {
	# Procedure called to update AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_ID_WIDTH { PARAM_VALUE.AXI_ID_WIDTH } {
	# Procedure called to validate AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_STRB_WIDTH { PARAM_VALUE.AXI_STRB_WIDTH } {
	# Procedure called to update AXI_STRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_STRB_WIDTH { PARAM_VALUE.AXI_STRB_WIDTH } {
	# Procedure called to validate AXI_STRB_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_USER_WIDTH { PARAM_VALUE.AXI_USER_WIDTH } {
	# Procedure called to update AXI_USER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_USER_WIDTH { PARAM_VALUE.AXI_USER_WIDTH } {
	# Procedure called to validate AXI_USER_WIDTH
	return true
}

proc update_PARAM_VALUE.BOOT_ADDR { PARAM_VALUE.BOOT_ADDR } {
	# Procedure called to update BOOT_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BOOT_ADDR { PARAM_VALUE.BOOT_ADDR } {
	# Procedure called to validate BOOT_ADDR
	return true
}

proc update_PARAM_VALUE.DM_EXCEPTION_ADDR { PARAM_VALUE.DM_EXCEPTION_ADDR } {
	# Procedure called to update DM_EXCEPTION_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DM_EXCEPTION_ADDR { PARAM_VALUE.DM_EXCEPTION_ADDR } {
	# Procedure called to validate DM_EXCEPTION_ADDR
	return true
}

proc update_PARAM_VALUE.DM_HALT_ADDR { PARAM_VALUE.DM_HALT_ADDR } {
	# Procedure called to update DM_HALT_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DM_HALT_ADDR { PARAM_VALUE.DM_HALT_ADDR } {
	# Procedure called to validate DM_HALT_ADDR
	return true
}


proc update_MODELPARAM_VALUE.DM_HALT_ADDR { MODELPARAM_VALUE.DM_HALT_ADDR PARAM_VALUE.DM_HALT_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DM_HALT_ADDR}] ${MODELPARAM_VALUE.DM_HALT_ADDR}
}

proc update_MODELPARAM_VALUE.DM_EXCEPTION_ADDR { MODELPARAM_VALUE.DM_EXCEPTION_ADDR PARAM_VALUE.DM_EXCEPTION_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DM_EXCEPTION_ADDR}] ${MODELPARAM_VALUE.DM_EXCEPTION_ADDR}
}

proc update_MODELPARAM_VALUE.BOOT_ADDR { MODELPARAM_VALUE.BOOT_ADDR PARAM_VALUE.BOOT_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BOOT_ADDR}] ${MODELPARAM_VALUE.BOOT_ADDR}
}

proc update_MODELPARAM_VALUE.AXI_ADDR_WIDTH { MODELPARAM_VALUE.AXI_ADDR_WIDTH PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_DATA_WIDTH { MODELPARAM_VALUE.AXI_DATA_WIDTH PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_ID_WIDTH { MODELPARAM_VALUE.AXI_ID_WIDTH PARAM_VALUE.AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_ID_WIDTH}] ${MODELPARAM_VALUE.AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_USER_WIDTH { MODELPARAM_VALUE.AXI_USER_WIDTH PARAM_VALUE.AXI_USER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_USER_WIDTH}] ${MODELPARAM_VALUE.AXI_USER_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_STRB_WIDTH { MODELPARAM_VALUE.AXI_STRB_WIDTH PARAM_VALUE.AXI_STRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_STRB_WIDTH}] ${MODELPARAM_VALUE.AXI_STRB_WIDTH}
}

