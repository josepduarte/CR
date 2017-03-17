
################################################################
# This is a generated script based on design: ex4
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
# source ex4_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-3
}


# CHANGE DESIGN NAME HERE
set design_name ex4

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
  set clk [ create_bd_port -dir I clk ]
  set led [ create_bd_port -dir O -from 9 -to 0 led ]
  set seg [ create_bd_port -dir O -from 6 -to 0 seg ]

  # Create instance: FirstBlock_wrapper_0, and set properties
  set FirstBlock_wrapper_0 [ create_bd_cell -type ip -vlnv ua.pt:user:FirstBlock_wrapper:1.0 FirstBlock_wrapper_0 ]

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0 ]
  set_property -dict [ list \
CONFIG.Byte_Size {9} \
CONFIG.Coe_File {../../../../../../cr_aula3/vector1024.coe} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Load_Init_File {true} \
CONFIG.Memory_Type {Single_Port_ROM} \
CONFIG.Port_A_Write_Rate {0} \
CONFIG.Read_Width_A {1024} \
CONFIG.Read_Width_B {1024} \
CONFIG.Register_PortA_Output_of_Memory_Core {false} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Write_Width_A {1024} \
CONFIG.Write_Width_B {1024} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: number_of_ones_0, and set properties
  set number_of_ones_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:number_of_ones:1.0 number_of_ones_0 ]
  set_property -dict [ list \
CONFIG.number_of_bits_input {1024} \
CONFIG.number_of_bits_output {10} \
 ] $number_of_ones_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {10} \
CONFIG.IN1_WIDTH {6} \
 ] $xlconcat_0

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
CONFIG.CONST_WIDTH {6} \
 ] $xlconstant_2

  # Create port connections
  connect_bd_net -net FirstBlock_wrapper_0_an [get_bd_ports an] [get_bd_pins FirstBlock_wrapper_0/an]
  connect_bd_net -net FirstBlock_wrapper_0_seg [get_bd_ports seg] [get_bd_pins FirstBlock_wrapper_0/seg]
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins blk_mem_gen_0/douta] [get_bd_pins number_of_ones_0/datain]
  connect_bd_net -net btnC_1 [get_bd_ports btnC] [get_bd_pins FirstBlock_wrapper_0/btnC]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins FirstBlock_wrapper_0/clk] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins number_of_ones_0/clk]
  connect_bd_net -net number_of_ones_0_result [get_bd_ports led] [get_bd_pins number_of_ones_0/result] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins FirstBlock_wrapper_0/sw] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins number_of_ones_0/reset] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins xlconcat_0/In1] [get_bd_pins xlconstant_2/dout]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port btnC -pg 1 -y 440 -defaultsOSRD
preplace port clk -pg 1 -y 40 -defaultsOSRD
preplace portBus an -pg 1 -y 450 -defaultsOSRD
preplace portBus led -pg 1 -y 390 -defaultsOSRD
preplace portBus seg -pg 1 -y 470 -defaultsOSRD
preplace inst number_of_ones_0 -pg 1 -lvl 3 -y 320 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 2 -y 90 -defaultsOSRD
preplace inst xlconstant_1 -pg 1 -lvl 2 -y 320 -defaultsOSRD
preplace inst FirstBlock_wrapper_0 -pg 1 -lvl 3 -y 460 -defaultsOSRD
preplace inst xlconstant_2 -pg 1 -lvl 1 -y 500 -defaultsOSRD
preplace inst xlconcat_0 -pg 1 -lvl 2 -y 490 -defaultsOSRD -resize 130 70
preplace inst blk_mem_gen_0 -pg 1 -lvl 3 -y 130 -defaultsOSRD -resize 145 238
preplace netloc xlconstant_1_dout 1 2 1 NJ
preplace netloc xlconstant_2_dout 1 1 1 NJ
preplace netloc btnC_1 1 0 3 NJ 440 NJ 440 NJ
preplace netloc FirstBlock_wrapper_0_an 1 3 1 NJ
preplace netloc xlconcat_0_dout 1 2 1 330
preplace netloc FirstBlock_wrapper_0_seg 1 3 1 NJ
preplace netloc clk_1 1 0 3 NJ 40 NJ 40 320
preplace netloc xlconstant_0_dout 1 2 1 NJ
preplace netloc blk_mem_gen_0_douta 1 2 1 330
preplace netloc number_of_ones_0_result 1 1 3 140 390 NJ 390 550
levelinfo -pg 1 0 80 230 440 570 -top 0 -bot 550
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


