proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Users/jduarte/Desktop/ProjectCR/PROJECT.cache/wt [current_project]
  set_property parent.project_path C:/Users/jduarte/Desktop/ProjectCR/PROJECT.xpr [current_project]
  set_property ip_repo_paths C:/Users/jduarte/Documents/GitHub/CR [current_project]
  set_property ip_output_repo C:/Users/jduarte/Desktop/ProjectCR/PROJECT.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet C:/Users/jduarte/Desktop/ProjectCR/TEMPORARY/synth_1/DebUART_wrapper.dcp
  add_files C:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/DebUART.bmm
  set_property SCOPED_TO_REF DebUART [get_files -all C:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/DebUART.bmm]
  add_files c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_microblaze_0_0/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF DebUART [get_files -all c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_microblaze_0_0/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS microblaze_0 [get_files -all c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_microblaze_0_0/data/mb_bootloop_le.elf]
  read_xdc -ref DebUART_microblaze_0_0 -cells U0 c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_microblaze_0_0/DebUART_microblaze_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_microblaze_0_0/DebUART_microblaze_0_0.xdc]
  read_xdc -ref DebUART_dlmb_v10_0 -cells U0 c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_dlmb_v10_0/DebUART_dlmb_v10_0.xdc
  set_property processing_order EARLY [get_files c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_dlmb_v10_0/DebUART_dlmb_v10_0.xdc]
  read_xdc -ref DebUART_ilmb_v10_0 -cells U0 c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_ilmb_v10_0/DebUART_ilmb_v10_0.xdc
  set_property processing_order EARLY [get_files c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_ilmb_v10_0/DebUART_ilmb_v10_0.xdc]
  read_xdc -ref DebUART_mdm_1_0 -cells U0 c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_mdm_1_0/DebUART_mdm_1_0.xdc
  set_property processing_order EARLY [get_files c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_mdm_1_0/DebUART_mdm_1_0.xdc]
  read_xdc -prop_thru_buffers -ref DebUART_clk_wiz_1_0 -cells inst c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_clk_wiz_1_0/DebUART_clk_wiz_1_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_clk_wiz_1_0/DebUART_clk_wiz_1_0_board.xdc]
  read_xdc -ref DebUART_clk_wiz_1_0 -cells inst c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_clk_wiz_1_0/DebUART_clk_wiz_1_0.xdc
  set_property processing_order EARLY [get_files c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_clk_wiz_1_0/DebUART_clk_wiz_1_0.xdc]
  read_xdc -prop_thru_buffers -ref DebUART_rst_clk_wiz_1_100M_0 -cells U0 c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_rst_clk_wiz_1_100M_0/DebUART_rst_clk_wiz_1_100M_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_rst_clk_wiz_1_100M_0/DebUART_rst_clk_wiz_1_100M_0_board.xdc]
  read_xdc -ref DebUART_rst_clk_wiz_1_100M_0 -cells U0 c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_rst_clk_wiz_1_100M_0/DebUART_rst_clk_wiz_1_100M_0.xdc
  set_property processing_order EARLY [get_files c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_rst_clk_wiz_1_100M_0/DebUART_rst_clk_wiz_1_100M_0.xdc]
  read_xdc -prop_thru_buffers -ref DebUART_axi_gpio_0_0 -cells U0 c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_axi_gpio_0_0/DebUART_axi_gpio_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_axi_gpio_0_0/DebUART_axi_gpio_0_0_board.xdc]
  read_xdc -ref DebUART_axi_gpio_0_0 -cells U0 c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_axi_gpio_0_0/DebUART_axi_gpio_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_axi_gpio_0_0/DebUART_axi_gpio_0_0.xdc]
  read_xdc -ref DebUART_counter_generic_0_0 -cells U0 c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_counter_generic_0_0/constrs_1/imports/Desktop/Nexys4_Master.xdc
  set_property processing_order EARLY [get_files c:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_counter_generic_0_0/constrs_1/imports/Desktop/Nexys4_Master.xdc]
  read_xdc C:/Users/jduarte/Desktop/ProjectCR/PROJECT.srcs/constrs_1/imports/CR/Nexys4_Master.xdc
  link_design -top DebUART_wrapper -part xc7a100tcsg324-1
  write_hwdef -file DebUART_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force DebUART_wrapper_opt.dcp
  catch { report_drc -file DebUART_wrapper_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force DebUART_wrapper_placed.dcp
  catch { report_io -file DebUART_wrapper_io_placed.rpt }
  catch { report_utilization -file DebUART_wrapper_utilization_placed.rpt -pb DebUART_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file DebUART_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force DebUART_wrapper_routed.dcp
  catch { report_drc -file DebUART_wrapper_drc_routed.rpt -pb DebUART_wrapper_drc_routed.pb -rpx DebUART_wrapper_drc_routed.rpx }
  catch { report_methodology -file DebUART_wrapper_methodology_drc_routed.rpt -rpx DebUART_wrapper_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file DebUART_wrapper_timing_summary_routed.rpt -rpx DebUART_wrapper_timing_summary_routed.rpx }
  catch { report_power -file DebUART_wrapper_power_routed.rpt -pb DebUART_wrapper_power_summary_routed.pb -rpx DebUART_wrapper_power_routed.rpx }
  catch { report_route_status -file DebUART_wrapper_route_status.rpt -pb DebUART_wrapper_route_status.pb }
  catch { report_clock_utilization -file DebUART_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force DebUART_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force DebUART_wrapper.mmi }
  catch { write_bmm -force DebUART_wrapper_bd.bmm }
  write_bitstream -force -no_partial_bitfile DebUART_wrapper.bit 
  catch { write_sysdef -hwdef DebUART_wrapper.hwdef -bitfile DebUART_wrapper.bit -meminfo DebUART_wrapper.mmi -file DebUART_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

