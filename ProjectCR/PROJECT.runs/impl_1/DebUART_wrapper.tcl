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

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  open_checkpoint DebUART_wrapper_routed.dcp
  set_property webtalk.parent_dir C:/Users/jduarte/Desktop/temp_stuff/CR/ProjectCR/PROJECT.cache/wt [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files c:/Users/jduarte/Desktop/temp_stuff/CR/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_microblaze_0_0/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF DebUART [get_files -all c:/Users/jduarte/Desktop/temp_stuff/CR/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_microblaze_0_0/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS microblaze_0 [get_files -all c:/Users/jduarte/Desktop/temp_stuff/CR/ProjectCR/PROJECT.srcs/sources_1/bd/DebUART/ip/DebUART_microblaze_0_0/data/mb_bootloop_le.elf]
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

