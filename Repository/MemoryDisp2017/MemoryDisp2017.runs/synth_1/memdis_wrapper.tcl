# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir K:/CRExamples2017/AT5/Repository/MemoryDisp2017/MemoryDisp2017.cache/wt [current_project]
set_property parent.project_path K:/CRExamples2017/AT5/Repository/MemoryDisp2017/MemoryDisp2017.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths k:/CRExamples2017/AT5/Repository [current_project]
set_property ip_output_repo k:/CRExamples2017/AT5/Repository/MemoryDisp2017/MemoryDisp2017.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files k:/CRExamples2017/AT5/JAVA/mul.coe
read_vhdl -library xil_defaultlib K:/CRExamples2017/AT5/Repository/MemoryDisp2017/MemoryDisp2017.srcs/sources_1/bd/memdis/hdl/memdis_wrapper.vhd
add_files K:/CRExamples2017/AT5/Repository/MemoryDisp2017/MemoryDisp2017.srcs/sources_1/bd/memdis/memdis.bd
set_property used_in_implementation false [get_files -all k:/CRExamples2017/AT5/Repository/MemoryDisp2017/MemoryDisp2017.srcs/sources_1/bd/memdis/ip/memdis_FirstBlock_wrapper_0_0/constrs_1/imports/Aula1_2017/Nexys4_Master.xdc]
set_property used_in_implementation false [get_files -all k:/CRExamples2017/AT5/Repository/MemoryDisp2017/MemoryDisp2017.srcs/sources_1/bd/memdis/ip/memdis_FirstBlock_wrapper_0_0/sources_1/bd/FirstBlock/FirstBlock_ooc.xdc]
set_property used_in_implementation false [get_files -all k:/CRExamples2017/AT5/Repository/MemoryDisp2017/MemoryDisp2017.srcs/sources_1/bd/memdis/ip/memdis_blk_mem_gen_0_0/memdis_blk_mem_gen_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all K:/CRExamples2017/AT5/Repository/MemoryDisp2017/MemoryDisp2017.srcs/sources_1/bd/memdis/memdis_ooc.xdc]
set_property is_locked true [get_files K:/CRExamples2017/AT5/Repository/MemoryDisp2017/MemoryDisp2017.srcs/sources_1/bd/memdis/memdis.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc K:/CRExamples2017/AT5/Repository/MemoryDisp2017/MemoryDisp2017.srcs/constrs_1/imports/Aula1_2017/Nexys4_Master.xdc
set_property used_in_implementation false [get_files K:/CRExamples2017/AT5/Repository/MemoryDisp2017/MemoryDisp2017.srcs/constrs_1/imports/Aula1_2017/Nexys4_Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top memdis_wrapper -part xc7a100tcsg324-1


write_checkpoint -force -noxdef memdis_wrapper.dcp

catch { report_utilization -file memdis_wrapper_utilization_synth.rpt -pb memdis_wrapper_utilization_synth.pb }
