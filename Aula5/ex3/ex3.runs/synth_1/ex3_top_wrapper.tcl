# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-3

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex3/ex3.cache/wt [current_project]
set_property parent.project_path C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex3/ex3.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths c:/Users/jduarte/Documents/GitHub/CR/Repository [current_project]
set_property ip_output_repo c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex3/ex3.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex1/vector128_16bits_random.coe
read_vhdl -library xil_defaultlib C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex3/ex3.srcs/sources_1/bd/ex3_top/hdl/ex3_top_wrapper.vhd
add_files C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex3/ex3.srcs/sources_1/bd/ex3_top/ex3_top.bd
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex3/ex3.srcs/sources_1/bd/ex3_top/ip/ex3_top_counter_generic_0_0/constrs_1/imports/Desktop/Nexys4_Master.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex3/ex3.srcs/sources_1/bd/ex3_top/ip/ex3_top_blk_mem_gen_0_1/ex3_top_blk_mem_gen_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/Aula5/ex3/ex3.srcs/sources_1/bd/ex3_top/ip/ex3_top_number_of_ones_0_0/constrs_1/imports/CR/Nexys4_Master.xdc]
set_property used_in_implementation false [get_files -all C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex3/ex3.srcs/sources_1/bd/ex3_top/ex3_top_ooc.xdc]
set_property is_locked true [get_files C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex3/ex3.srcs/sources_1/bd/ex3_top/ex3_top.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex3/ex3.srcs/constrs_1/imports/CR/Nexys4_Master.xdc
set_property used_in_implementation false [get_files C:/Users/jduarte/Documents/GitHub/CR/Aula5/ex3/ex3.srcs/constrs_1/imports/CR/Nexys4_Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top ex3_top_wrapper -part xc7a100tcsg324-3


write_checkpoint -force -noxdef ex3_top_wrapper.dcp

catch { report_utilization -file ex3_top_wrapper_utilization_synth.rpt -pb ex3_top_wrapper_utilization_synth.pb }