
################################################################
# This is a generated script based on design: ex3_top
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source ex3_top_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-3
}


# CHANGE DESIGN NAME HERE
set design_name ex3_top

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set an [ create_bd_port -dir O -from 7 -to 0 an ]
  set btnC [ create_bd_port -dir I btnC ]
  set btnD [ create_bd_port -dir I btnD ]
  set clk [ create_bd_port -dir I clk ]
  set led [ create_bd_port -dir O -from 3 -to 0 led ]
  set seg [ create_bd_port -dir O -from 6 -to 0 seg ]

  # Create instance: CounterGenericNoClk_0, and set properties
  set CounterGenericNoClk_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:CounterGenericNoClk:1.0 CounterGenericNoClk_0 ]

  # Create instance: EightDispControl_0, and set properties
  set EightDispControl_0 [ create_bd_cell -type ip -vlnv ua.pt:user:EightDispControl:1.0 EightDispControl_0 ]

  # Create instance: MaxMinFSM_0, and set properties
  set MaxMinFSM_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:MaxMinFSM:1.0 MaxMinFSM_0 ]

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0 ]
  set_property -dict [ list \
CONFIG.Byte_Size {9} \
CONFIG.Coe_File {../../../../../../../ex1/vector16_8bits_random.coe} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Load_Init_File {true} \
CONFIG.Memory_Type {Single_Port_ROM} \
CONFIG.Port_A_Write_Rate {0} \
CONFIG.Read_Width_A {8} \
CONFIG.Read_Width_B {8} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Write_Width_A {8} \
CONFIG.Write_Width_B {8} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: c_addsub_0, and set properties
  set c_addsub_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_addsub:12.0 c_addsub_0 ]
  set_property -dict [ list \
CONFIG.A_Type {Signed} \
CONFIG.A_Width {4} \
CONFIG.Add_Mode {Subtract} \
CONFIG.B_Constant {true} \
CONFIG.B_Type {Signed} \
CONFIG.B_Value {0010} \
CONFIG.B_Width {4} \
CONFIG.CE {false} \
CONFIG.Latency {0} \
CONFIG.Out_Width {4} \
 ] $c_addsub_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_2

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {2} \
 ] $xlconstant_3

  # Create instance: xlconstant_4, and set properties
  set xlconstant_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_4 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_4

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {7} \
CONFIG.DIN_TO {4} \
CONFIG.DIN_WIDTH {8} \
CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {3} \
CONFIG.DIN_TO {0} \
CONFIG.DIN_WIDTH {8} \
CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_1

  # Create port connections
  connect_bd_net -net CounterGenericNoClk_0_count [get_bd_pins CounterGenericNoClk_0/count] [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins c_addsub_0/A]
  connect_bd_net -net EightDispControl_0_segments [get_bd_ports seg] [get_bd_pins EightDispControl_0/segments]
  connect_bd_net -net EightDispControl_0_select_display [get_bd_ports an] [get_bd_pins EightDispControl_0/select_display]
  connect_bd_net -net MaxMinFSM_0_outadd [get_bd_ports led] [get_bd_pins MaxMinFSM_0/outadd]
  connect_bd_net -net MaxMinFSM_0_outp [get_bd_pins MaxMinFSM_0/outp] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins MaxMinFSM_0/inp] [get_bd_pins blk_mem_gen_0/douta]
  connect_bd_net -net btnC_1 [get_bd_ports btnC] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net btnD_1 [get_bd_ports btnD] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net c_addsub_0_S [get_bd_pins MaxMinFSM_0/inadd] [get_bd_pins c_addsub_0/S]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins CounterGenericNoClk_0/clk] [get_bd_pins EightDispControl_0/clk] [get_bd_pins MaxMinFSM_0/clk] [get_bd_pins blk_mem_gen_0/clka]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins xlconcat_0/dout] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins MaxMinFSM_0/btn] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins CounterGenericNoClk_0/reset] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins CounterGenericNoClk_0/enable] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins CounterGenericNoClk_0/updown_n] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins xlconcat_1/In1] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlconstant_4_dout [get_bd_pins EightDispControl_0/leftL] [get_bd_pins EightDispControl_0/leftR] [get_bd_pins EightDispControl_0/near_leftL] [get_bd_pins EightDispControl_0/near_leftR] [get_bd_pins EightDispControl_0/near_rightL] [get_bd_pins EightDispControl_0/rightL] [get_bd_pins xlconstant_4/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins EightDispControl_0/near_rightR] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins EightDispControl_0/rightR] [get_bd_pins xlslice_1/Dout]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port btnC -pg 1 -y 590 -defaultsOSRD
preplace port btnD -pg 1 -y 570 -defaultsOSRD
preplace port clk -pg 1 -y 70 -defaultsOSRD
preplace portBus an -pg 1 -y 110 -defaultsOSRD
preplace portBus led -pg 1 -y 500 -defaultsOSRD
preplace portBus seg -pg 1 -y 130 -defaultsOSRD
preplace inst xlslice_0 -pg 1 -lvl 3 -y 120 -defaultsOSRD
preplace inst EightDispControl_0 -pg 1 -lvl 4 -y 120 -defaultsOSRD
preplace inst xlslice_1 -pg 1 -lvl 3 -y 240 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 1 -y 120 -defaultsOSRD
preplace inst xlconstant_1 -pg 1 -lvl 1 -y 200 -defaultsOSRD
preplace inst xlconstant_2 -pg 1 -lvl 1 -y 280 -defaultsOSRD
preplace inst c_addsub_0 -pg 1 -lvl 3 -y 400 -defaultsOSRD
preplace inst xlconcat_0 -pg 1 -lvl 2 -y 580 -defaultsOSRD
preplace inst xlconstant_3 -pg 1 -lvl 2 -y 490 -defaultsOSRD
preplace inst MaxMinFSM_0 -pg 1 -lvl 4 -y 650 -defaultsOSRD
preplace inst xlconstant_4 -pg 1 -lvl 3 -y 40 -defaultsOSRD
preplace inst xlconcat_1 -pg 1 -lvl 3 -y 510 -defaultsOSRD
preplace inst blk_mem_gen_0 -pg 1 -lvl 4 -y 420 -defaultsOSRD
preplace inst CounterGenericNoClk_0 -pg 1 -lvl 2 -y 190 -defaultsOSRD
preplace netloc xlconstant_1_dout 1 1 1 NJ
preplace netloc EightDispControl_0_segments 1 4 1 NJ
preplace netloc xlslice_1_Dout 1 3 1 540J
preplace netloc xlconstant_2_dout 1 1 1 150J
preplace netloc MaxMinFSM_0_outadd 1 4 1 850J
preplace netloc btnC_1 1 0 2 NJ 590 NJ
preplace netloc btnD_1 1 0 2 NJ 570 NJ
preplace netloc xlconcat_1_dout 1 3 1 540
preplace netloc xlconcat_0_dout 1 2 1 350
preplace netloc xlconstant_0_dout 1 1 1 140J
preplace netloc clk_1 1 0 4 NJ 70 150 70 340J 170 570
preplace netloc CounterGenericNoClk_0_count 1 2 2 340 450 560
preplace netloc xlconstant_4_dout 1 3 1 550
preplace netloc blk_mem_gen_0_douta 1 3 1 580
preplace netloc MaxMinFSM_0_outp 1 2 3 350 190 550J 250 840
preplace netloc EightDispControl_0_select_display 1 4 1 NJ
preplace netloc c_addsub_0_S 1 3 1 550
preplace netloc xlslice_0_Dout 1 3 1 540J
preplace netloc xlconstant_3_dout 1 2 1 340J
levelinfo -pg 1 0 80 250 450 710 870 -top 0 -bot 730
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


