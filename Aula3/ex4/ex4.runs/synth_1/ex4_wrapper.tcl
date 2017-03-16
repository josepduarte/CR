# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7a100tcsg324-3

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/jduarte/Documents/GitHub/CR/Aula3/ex4/ex4.cache/wt [current_project]
set_property parent.project_path C:/Users/jduarte/Documents/GitHub/CR/Aula3/ex4/ex4.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths c:/Users/jduarte/Documents/GitHub/CR/Repository [current_project]
set_property ip_output_repo c:/Users/jduarte/Documents/GitHub/CR/Aula3/ex4/ex4.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files c:/Users/jduarte/Documents/GitHub/CR/Aula3/ex4/cr_aula3/vector1024.coe
read_vhdl -library xil_defaultlib C:/Users/jduarte/Documents/GitHub/CR/Aula3/ex4/ex4.srcs/sources_1/bd/ex4/hdl/ex4_wrapper.vhd
add_files C:/Users/jduarte/Documents/GitHub/CR/Aula3/ex4/ex4.srcs/sources_1/bd/ex4/ex4.bd
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/Aula3/ex4/ex4.srcs/sources_1/bd/ex4/ip/ex4_blk_mem_gen_0_0/ex4_blk_mem_gen_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/Aula3/ex4/ex4.srcs/sources_1/bd/ex4/ip/ex4_number_of_ones_0_0/constrs_1/imports/CR/Nexys4_Master.xdc]
set_property used_in_implementation false [get_files -all C:/Users/jduarte/Documents/GitHub/CR/Aula3/ex4/ex4.srcs/sources_1/bd/ex4/ex4_ooc.xdc]
set_property is_locked true [get_files C:/Users/jduarte/Documents/GitHub/CR/Aula3/ex4/ex4.srcs/sources_1/bd/ex4/ex4.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/jduarte/Documents/GitHub/CR/Aula3/ex4/ex4.srcs/constrs_1/imports/CR/Nexys4_Master.xdc
set_property used_in_implementation false [get_files C:/Users/jduarte/Documents/GitHub/CR/Aula3/ex4/ex4.srcs/constrs_1/imports/CR/Nexys4_Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top ex4_wrapper -part xc7a100tcsg324-3


write_checkpoint -force -noxdef ex4_wrapper.dcp

catch { report_utilization -file ex4_wrapper_utilization_synth.rpt -pb ex4_wrapper_utilization_synth.pb }
