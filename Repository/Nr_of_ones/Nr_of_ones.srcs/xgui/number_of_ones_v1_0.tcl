# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "number_of_bits_input" -parent ${Page_0}
  ipgui::add_param $IPINST -name "number_of_bits_output" -parent ${Page_0}


}

proc update_PARAM_VALUE.number_of_bits_input { PARAM_VALUE.number_of_bits_input } {
	# Procedure called to update number_of_bits_input when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.number_of_bits_input { PARAM_VALUE.number_of_bits_input } {
	# Procedure called to validate number_of_bits_input
	return true
}

proc update_PARAM_VALUE.number_of_bits_output { PARAM_VALUE.number_of_bits_output } {
	# Procedure called to update number_of_bits_output when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.number_of_bits_output { PARAM_VALUE.number_of_bits_output } {
	# Procedure called to validate number_of_bits_output
	return true
}


proc update_MODELPARAM_VALUE.number_of_bits_input { MODELPARAM_VALUE.number_of_bits_input PARAM_VALUE.number_of_bits_input } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.number_of_bits_input}] ${MODELPARAM_VALUE.number_of_bits_input}
}

proc update_MODELPARAM_VALUE.number_of_bits_output { MODELPARAM_VALUE.number_of_bits_output PARAM_VALUE.number_of_bits_output } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.number_of_bits_output}] ${MODELPARAM_VALUE.number_of_bits_output}
}

