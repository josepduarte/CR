# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-3

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/ruilopes/Documents/CR/Aula3/ex1_top/ex1_top.cache/wt [current_project]
set_property parent.project_path C:/Users/ruilopes/Documents/CR/Aula3/ex1_top/ex1_top.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths {
  c:/Users/ruilopes/Documents/CR/Aula3/ex1
  {//Mac/Home/Documents/University/Courses/Computer and Telematics Engineering/4th Grade/Reconfigurable Computation/Tools/Repository}
} [current_project]
set_property ip_output_repo c:/Users/ruilopes/Documents/CR/Aula3/ex1_top/ex1_top.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib C:/Users/ruilopes/Documents/CR/Aula3/ex1_top/ex1_top.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.vhd
add_files C:/Users/ruilopes/Documents/CR/Aula3/ex1_top/ex1_top.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all c:/Users/ruilopes/Documents/CR/Aula3/ex1_top/ex1_top.srcs/sources_1/bd/design_1/ip/design_1_ConsecutiveOnesFSM_0_0/constrs_1/imports/CR/Nexys4_Master.xdc]
set_property used_in_implementation false [get_files -all C:/Users/ruilopes/Documents/CR/Aula3/ex1_top/ex1_top.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property is_locked true [get_files C:/Users/ruilopes/Documents/CR/Aula3/ex1_top/ex1_top.srcs/sources_1/bd/design_1/design_1.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/ruilopes/Documents/CR/Aula3/ex1_top/ex1_top.srcs/constrs_1/imports/CR/Nexys4_Master.xdc
set_property used_in_implementation false [get_files C:/Users/ruilopes/Documents/CR/Aula3/ex1_top/ex1_top.srcs/constrs_1/imports/CR/Nexys4_Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top design_1_wrapper -part xc7a100tcsg324-3


write_checkpoint -force -noxdef design_1_wrapper.dcp

catch { report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb }