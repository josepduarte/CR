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
  set_property webtalk.parent_dir C:/Users/jduarte/Documents/GitHub/CR/Aula4/ex2/ex2.cache/wt [current_project]
  set_property parent.project_path C:/Users/jduarte/Documents/GitHub/CR/Aula4/ex2/ex2.xpr [current_project]
  set_property ip_output_repo C:/Users/jduarte/Documents/GitHub/CR/Aula4/ex2/ex2.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  add_files -quiet C:/Users/jduarte/Documents/GitHub/CR/Aula4/ex2/ex2.runs/synth_1/max_min_FSM.dcp
  read_xdc C:/Users/jduarte/Documents/GitHub/CR/Aula4/ex2/ex2.srcs/constrs_1/imports/CR/Nexys4_Master.xdc
  link_design -top max_min_FSM -part xc7a100tcsg324-3
  write_hwdef -file max_min_FSM.hwdef
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
  write_checkpoint -force max_min_FSM_opt.dcp
  catch { report_drc -file max_min_FSM_drc_opted.rpt }
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
  write_checkpoint -force max_min_FSM_placed.dcp
  catch { report_io -file max_min_FSM_io_placed.rpt }
  catch { report_utilization -file max_min_FSM_utilization_placed.rpt -pb max_min_FSM_utilization_placed.pb }
  catch { report_control_sets -verbose -file max_min_FSM_control_sets_placed.rpt }
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
  write_checkpoint -force max_min_FSM_routed.dcp
  catch { report_drc -file max_min_FSM_drc_routed.rpt -pb max_min_FSM_drc_routed.pb -rpx max_min_FSM_drc_routed.rpx }
  catch { report_methodology -file max_min_FSM_methodology_drc_routed.rpt -rpx max_min_FSM_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file max_min_FSM_timing_summary_routed.rpt -rpx max_min_FSM_timing_summary_routed.rpx }
  catch { report_power -file max_min_FSM_power_routed.rpt -pb max_min_FSM_power_summary_routed.pb -rpx max_min_FSM_power_routed.rpx }
  catch { report_route_status -file max_min_FSM_route_status.rpt -pb max_min_FSM_route_status.pb }
  catch { report_clock_utilization -file max_min_FSM_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force max_min_FSM_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

