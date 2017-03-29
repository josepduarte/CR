# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-3

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.cache/wt [current_project]
set_property parent.project_path C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths c:/Users/jduarte/Documents/GitHub/CR/Repository [current_project]
set_property ip_output_repo c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.srcs/sources_1/bd/ex1/ip/ex1_EightDispControl_0_0/ex1_EightDispControl_0_0.xci
set_property is_locked true [get_files c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.srcs/sources_1/bd/ex1/ip/ex1_EightDispControl_0_0/ex1_EightDispControl_0_0.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.runs/ex1_EightDispControl_0_0_synth_1 -new_name ex1_EightDispControl_0_0 -ip [get_ips ex1_EightDispControl_0_0]]

if { $cached_ip eq {} } {

synth_design -top ex1_EightDispControl_0_0 -part xc7a100tcsg324-3 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix ex1_EightDispControl_0_0_ ex1_EightDispControl_0_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ex1_EightDispControl_0_0_stub.v
 lappend ipCachedFiles ex1_EightDispControl_0_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ex1_EightDispControl_0_0_stub.vhdl
 lappend ipCachedFiles ex1_EightDispControl_0_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ex1_EightDispControl_0_0_sim_netlist.v
 lappend ipCachedFiles ex1_EightDispControl_0_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ex1_EightDispControl_0_0_sim_netlist.vhdl
 lappend ipCachedFiles ex1_EightDispControl_0_0_sim_netlist.vhdl

 config_ip_cache -add -dcp ex1_EightDispControl_0_0.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips ex1_EightDispControl_0_0]
}

rename_ref -prefix_all ex1_EightDispControl_0_0_

write_checkpoint -force -noxdef ex1_EightDispControl_0_0.dcp

catch { report_utilization -file ex1_EightDispControl_0_0_utilization_synth.rpt -pb ex1_EightDispControl_0_0_utilization_synth.pb }

if { [catch {
  file copy -force C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.runs/ex1_EightDispControl_0_0_synth_1/ex1_EightDispControl_0_0.dcp c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.srcs/sources_1/bd/ex1/ip/ex1_EightDispControl_0_0/ex1_EightDispControl_0_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.srcs/sources_1/bd/ex1/ip/ex1_EightDispControl_0_0/ex1_EightDispControl_0_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.srcs/sources_1/bd/ex1/ip/ex1_EightDispControl_0_0/ex1_EightDispControl_0_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.srcs/sources_1/bd/ex1/ip/ex1_EightDispControl_0_0/ex1_EightDispControl_0_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.srcs/sources_1/bd/ex1/ip/ex1_EightDispControl_0_0/ex1_EightDispControl_0_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.runs/ex1_EightDispControl_0_0_synth_1/ex1_EightDispControl_0_0.dcp c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.srcs/sources_1/bd/ex1/ip/ex1_EightDispControl_0_0/ex1_EightDispControl_0_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.runs/ex1_EightDispControl_0_0_synth_1/ex1_EightDispControl_0_0_stub.v c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.srcs/sources_1/bd/ex1/ip/ex1_EightDispControl_0_0/ex1_EightDispControl_0_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.runs/ex1_EightDispControl_0_0_synth_1/ex1_EightDispControl_0_0_stub.vhdl c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.srcs/sources_1/bd/ex1/ip/ex1_EightDispControl_0_0/ex1_EightDispControl_0_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.runs/ex1_EightDispControl_0_0_synth_1/ex1_EightDispControl_0_0_sim_netlist.v c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.srcs/sources_1/bd/ex1/ip/ex1_EightDispControl_0_0/ex1_EightDispControl_0_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.runs/ex1_EightDispControl_0_0_synth_1/ex1_EightDispControl_0_0_sim_netlist.vhdl c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.srcs/sources_1/bd/ex1/ip/ex1_EightDispControl_0_0/ex1_EightDispControl_0_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.ip_user_files/ip/ex1_EightDispControl_0_0]} {
  catch { 
    file copy -force c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.srcs/sources_1/bd/ex1/ip/ex1_EightDispControl_0_0/ex1_EightDispControl_0_0_stub.v C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.ip_user_files/ip/ex1_EightDispControl_0_0
  }
}

if {[file isdir C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.ip_user_files/ip/ex1_EightDispControl_0_0]} {
  catch { 
    file copy -force c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.srcs/sources_1/bd/ex1/ip/ex1_EightDispControl_0_0/ex1_EightDispControl_0_0_stub.vhdl C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/ex1.ip_user_files/ip/ex1_EightDispControl_0_0
  }
}
