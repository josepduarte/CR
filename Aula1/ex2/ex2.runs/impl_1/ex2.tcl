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
  set_param xicom.use_bs_reader 1
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Users/jduarte/Desktop/CR/Aula1/ex2/ex2.cache/wt [current_project]
  set_property parent.project_path C:/Users/jduarte/Desktop/CR/Aula1/ex2/ex2.xpr [current_project]
  set_property ip_output_repo C:/Users/jduarte/Desktop/CR/Aula1/ex2/ex2.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  add_files -quiet C:/Users/jduarte/Desktop/CR/Aula1/ex2/ex2.runs/synth_1/ex2.dcp
  read_xdc C:/Users/jduarte/Desktop/CR/Aula1/ex2/ex2.srcs/constrs_1/imports/new/SDR_const.xdc
  link_design -top ex2 -part xc7a100tcsg324-3
  write_hwdef -file ex2.hwdef
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
  write_checkpoint -force ex2_opt.dcp
  catch { report_drc -file ex2_drc_opted.rpt }
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
  write_checkpoint -force ex2_placed.dcp
  catch { report_io -file ex2_io_placed.rpt }
  catch { report_utilization -file ex2_utilization_placed.rpt -pb ex2_utilization_placed.pb }
  catch { report_control_sets -verbose -file ex2_control_sets_placed.rpt }
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
  write_checkpoint -force ex2_routed.dcp
  catch { report_drc -file ex2_drc_routed.rpt -pb ex2_drc_routed.pb -rpx ex2_drc_routed.rpx }
  catch { report_methodology -file ex2_methodology_drc_routed.rpt -rpx ex2_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file ex2_timing_summary_routed.rpt -rpx ex2_timing_summary_routed.rpx }
  catch { report_power -file ex2_power_routed.rpt -pb ex2_power_summary_routed.pb -rpx ex2_power_routed.rpx }
  catch { report_route_status -file ex2_route_status.rpt -pb ex2_route_status.pb }
  catch { report_clock_utilization -file ex2_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force ex2_routed_error.dcp
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
  catch { write_mem_info -force ex2.mmi }
  write_bitstream -force -no_partial_bitfile ex2.bit 
  catch { write_sysdef -hwdef ex2.hwdef -bitfile ex2.bit -meminfo ex2.mmi -file ex2.sysdef }
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

