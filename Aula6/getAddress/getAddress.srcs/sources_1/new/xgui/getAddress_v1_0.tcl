# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "bits" -parent ${Page_0}
  ipgui::add_param $IPINST -name "log_words" -parent ${Page_0}
  ipgui::add_param $IPINST -name "words" -parent ${Page_0}


}

proc update_PARAM_VALUE.bits { PARAM_VALUE.bits } {
	# Procedure called to update bits when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.bits { PARAM_VALUE.bits } {
	# Procedure called to validate bits
	return true
}

proc update_PARAM_VALUE.log_words { PARAM_VALUE.log_words } {
	# Procedure called to update log_words when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.log_words { PARAM_VALUE.log_words } {
	# Procedure called to validate log_words
	return true
}

proc update_PARAM_VALUE.words { PARAM_VALUE.words } {
	# Procedure called to update words when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.words { PARAM_VALUE.words } {
	# Procedure called to validate words
	return true
}


proc update_MODELPARAM_VALUE.bits { MODELPARAM_VALUE.bits PARAM_VALUE.bits } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.bits}] ${MODELPARAM_VALUE.bits}
}

proc update_MODELPARAM_VALUE.log_words { MODELPARAM_VALUE.log_words PARAM_VALUE.log_words } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.log_words}] ${MODELPARAM_VALUE.log_words}
}

proc update_MODELPARAM_VALUE.words { MODELPARAM_VALUE.words PARAM_VALUE.words } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.words}] ${MODELPARAM_VALUE.words}
}

