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
set_property webtalk.parent_dir C:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.cache/wt [current_project]
set_property parent.project_path C:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_repo_paths c:/Users/jduarte/Documents/GitHub/CR [current_project]
set_property ip_output_repo c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib C:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/hdl/Project_design_wrapper.vhd
add_files C:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/Project_design.bd
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_microblaze_0_0/Project_design_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_microblaze_0_0/Project_design_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_microblaze_0_0/Project_design_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_dlmb_v10_0/Project_design_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_dlmb_v10_0/Project_design_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_ilmb_v10_0/Project_design_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_ilmb_v10_0/Project_design_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_dlmb_bram_if_cntlr_0/Project_design_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_ilmb_bram_if_cntlr_0/Project_design_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_lmb_bram_0/Project_design_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_mdm_1_0/Project_design_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_mdm_1_0/Project_design_mdm_1_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_mdm_1_0/Project_design_mdm_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_clk_wiz_1_0/Project_design_clk_wiz_1_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_clk_wiz_1_0/Project_design_clk_wiz_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_clk_wiz_1_0/Project_design_clk_wiz_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_rst_clk_wiz_1_100M_0/Project_design_rst_clk_wiz_1_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_rst_clk_wiz_1_100M_0/Project_design_rst_clk_wiz_1_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_rst_clk_wiz_1_100M_0/Project_design_rst_clk_wiz_1_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_axi_gpio_0_0/Project_design_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_axi_gpio_0_0/Project_design_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_axi_gpio_0_0/Project_design_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_xbar_0/Project_design_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_blk_mem_gen_1_0/Project_design_blk_mem_gen_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_counter_generic_0_0/constrs_1/imports/Desktop/Nexys4_Master.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_auto_pc_0/Project_design_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/ip/Project_design_auto_pc_1/Project_design_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/Project_design_ooc.xdc]
set_property is_locked true [get_files C:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/sources_1/bd/Project_design/Project_design.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/constrs_1/imports/CR/Nexys4_Master.xdc
set_property used_in_implementation false [get_files C:/Users/jduarte/Documents/GitHub/CR/ProjetoV2/Projeto/Projeto.srcs/constrs_1/imports/CR/Nexys4_Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top Project_design_wrapper -part xc7a100tcsg324-3


write_checkpoint -force -noxdef Project_design_wrapper.dcp

catch { report_utilization -file Project_design_wrapper_utilization_synth.rpt -pb Project_design_wrapper_utilization_synth.pb }
