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
set_property webtalk.parent_dir C:/Users/jduarte/Documents/GitHub/CR/Aula6/ex7/ex7.cache/wt [current_project]
set_property parent.project_path C:/Users/jduarte/Documents/GitHub/CR/Aula6/ex7/ex7.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths c:/Users/jduarte/Documents/GitHub/CR/Aula6/ex7/ex7.srcs/sources_1/new [current_project]
set_property ip_output_repo c:/Users/jduarte/Documents/GitHub/CR/Aula6/ex7/ex7.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib C:/Users/jduarte/Documents/GitHub/CR/Aula6/ex7/ex7.srcs/sources_1/new/BubbleSorter.vhd
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top BubbleSorter -part xc7a100tcsg324-3


write_checkpoint -force -noxdef BubbleSorter.dcp

catch { report_utilization -file BubbleSorter_utilization_synth.rpt -pb BubbleSorter_utilization_synth.pb }
