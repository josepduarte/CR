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
set_property webtalk.parent_dir C:/Users/ruilopes/Documents/CR/Aula2/ex5/ex5.cache/wt [current_project]
set_property parent.project_path C:/Users/ruilopes/Documents/CR/Aula2/ex5/ex5.xpr [current_project]
set_property default_lib work [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/ruilopes/Documents/CR/Aula2/ex5/ex5.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library work {
  C:/Users/ruilopes/Documents/CR/Aula2/ex5/ex5.srcs/sources_1/new/GenericALU.vhd
  C:/Users/ruilopes/Documents/CR/Aula2/ex5/ex5.srcs/sources_1/new/ALUDemo.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/ruilopes/Documents/CR/Aula2/ex5/ex5.srcs/constrs_1/imports/CR/Nexys4_Master.xdc
set_property used_in_implementation false [get_files C:/Users/ruilopes/Documents/CR/Aula2/ex5/ex5.srcs/constrs_1/imports/CR/Nexys4_Master.xdc]


synth_design -top ALUDemo -part xc7a100tcsg324-3


write_checkpoint -force -noxdef ALUDemo.dcp

catch { report_utilization -file ALUDemo_utilization_synth.rpt -pb ALUDemo_utilization_synth.pb }
