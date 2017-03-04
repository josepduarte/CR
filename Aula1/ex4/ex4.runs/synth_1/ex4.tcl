# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-3

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/jduarte/Desktop/CR/Aula1/ex4/ex4.cache/wt [current_project]
set_property parent.project_path C:/Users/jduarte/Desktop/CR/Aula1/ex4/ex4.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/jduarte/Desktop/CR/Aula1/ex4/ex4.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library work {
  C:/Users/jduarte/Desktop/CR/Aula1/ex4/ex4.srcs/sources_1/new/clock_divider.vhd
  C:/Users/jduarte/Desktop/CR/Aula1/ex4/ex4.srcs/sources_1/new/ex4.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/jduarte/Desktop/CR/Aula1/ex4/ex4.srcs/constrs_1/imports/new/SDR_const.xdc
set_property used_in_implementation false [get_files C:/Users/jduarte/Desktop/CR/Aula1/ex4/ex4.srcs/constrs_1/imports/new/SDR_const.xdc]


synth_design -top ex4 -part xc7a100tcsg324-3


write_checkpoint -force -noxdef ex4.dcp

catch { report_utilization -file ex4_utilization_synth.rpt -pb ex4_utilization_synth.pb }
