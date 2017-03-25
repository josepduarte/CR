
################################################################
# This is a generated script based on design: ex5
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
# source ex5_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-3
}


# CHANGE DESIGN NAME HERE
set design_name ex5

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
  set btnL [ create_bd_port -dir I btnL ]
  set btnR [ create_bd_port -dir I btnR ]
  set clk [ create_bd_port -dir I clk ]
  set led [ create_bd_port -dir O -from 15 -to 0 led ]
  set seg [ create_bd_port -dir O -from 6 -to 0 seg ]
  set sw [ create_bd_port -dir I -from 15 -to 0 sw ]

  # Create instance: BinToBCD16_0, and set properties
  set BinToBCD16_0 [ create_bd_cell -type ip -vlnv ua.pt:user:BinToBCD16:1.0 BinToBCD16_0 ]

  # Create instance: EightDispControl_0, and set properties
  set EightDispControl_0 [ create_bd_cell -type ip -vlnv ua.pt:user:EightDispControl:1.0 EightDispControl_0 ]

  # Create instance: Mux2_1_0, and set properties
  set Mux2_1_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux2_1:1.0 Mux2_1_0 ]
  set_property -dict [ list \
CONFIG.number_of_bits {16} \
 ] $Mux2_1_0

  # Create instance: Mux4_1_0, and set properties
  set Mux4_1_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux4_1:1.0 Mux4_1_0 ]
  set_property -dict [ list \
CONFIG.number_of_bits {16} \
 ] $Mux4_1_0

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0 ]
  set_property -dict [ list \
CONFIG.Byte_Size {9} \
CONFIG.Coe_File {../../../../../../sum.coe} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Load_Init_File {true} \
CONFIG.Memory_Type {Single_Port_ROM} \
CONFIG.Port_A_Write_Rate {0} \
CONFIG.Read_Width_A {16} \
CONFIG.Read_Width_B {16} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Write_Width_A {16} \
CONFIG.Write_Width_B {16} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: blk_mem_gen_1, and set properties
  set blk_mem_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_1 ]
  set_property -dict [ list \
CONFIG.Byte_Size {9} \
CONFIG.Coe_File {../../../../../../sub.coe} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Load_Init_File {true} \
CONFIG.Memory_Type {Single_Port_ROM} \
CONFIG.Port_A_Write_Rate {0} \
CONFIG.Read_Width_A {16} \
CONFIG.Read_Width_B {16} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Write_Width_A {16} \
CONFIG.Write_Width_B {16} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_1

  # Create instance: blk_mem_gen_2, and set properties
  set blk_mem_gen_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_2 ]
  set_property -dict [ list \
CONFIG.Byte_Size {9} \
CONFIG.Coe_File {../../../../../../mul.coe} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Load_Init_File {true} \
CONFIG.Memory_Type {Single_Port_ROM} \
CONFIG.Port_A_Write_Rate {0} \
CONFIG.Read_Width_A {16} \
CONFIG.Read_Width_B {16} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Write_Width_A {16} \
CONFIG.Write_Width_B {16} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_2

  # Create instance: blk_mem_gen_3, and set properties
  set blk_mem_gen_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_3 ]
  set_property -dict [ list \
CONFIG.Byte_Size {9} \
CONFIG.Coe_File {../../../../../../div.coe} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Load_Init_File {true} \
CONFIG.Memory_Type {Single_Port_ROM} \
CONFIG.Port_A_Write_Rate {0} \
CONFIG.Read_Width_A {16} \
CONFIG.Read_Width_B {16} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Write_Width_A {16} \
CONFIG.Write_Width_B {16} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_3

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_1

  # Create port connections
  connect_bd_net -net BinToBCD16_0_BCD0 [get_bd_pins BinToBCD16_0/BCD0] [get_bd_pins EightDispControl_0/rightR]
  connect_bd_net -net BinToBCD16_0_BCD1 [get_bd_pins BinToBCD16_0/BCD1] [get_bd_pins EightDispControl_0/near_rightR]
  connect_bd_net -net BinToBCD16_0_BCD2 [get_bd_pins BinToBCD16_0/BCD2] [get_bd_pins EightDispControl_0/near_leftR]
  connect_bd_net -net BinToBCD16_0_BCD3 [get_bd_pins BinToBCD16_0/BCD3] [get_bd_pins EightDispControl_0/leftR]
  connect_bd_net -net BinToBCD16_0_BCD4 [get_bd_pins BinToBCD16_0/BCD4] [get_bd_pins EightDispControl_0/rightL]
  connect_bd_net -net EightDispControl_0_segments [get_bd_ports seg] [get_bd_pins EightDispControl_0/segments]
  connect_bd_net -net EightDispControl_0_select_display [get_bd_ports an] [get_bd_pins EightDispControl_0/select_display]
  connect_bd_net -net Mux2_1_0_dataout [get_bd_pins BinToBCD16_0/binary] [get_bd_pins Mux2_1_0/dataout]
  connect_bd_net -net Mux4_1_0_dataout [get_bd_ports led] [get_bd_pins Mux2_1_0/datain1] [get_bd_pins Mux4_1_0/dataout]
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins Mux4_1_0/datain0] [get_bd_pins blk_mem_gen_0/douta]
  connect_bd_net -net blk_mem_gen_1_douta [get_bd_pins Mux4_1_0/datain1] [get_bd_pins blk_mem_gen_1/douta]
  connect_bd_net -net blk_mem_gen_2_douta [get_bd_pins Mux4_1_0/datain2] [get_bd_pins blk_mem_gen_2/douta]
  connect_bd_net -net blk_mem_gen_3_douta [get_bd_pins Mux4_1_0/datain3] [get_bd_pins blk_mem_gen_3/douta]
  connect_bd_net -net btnC_1 [get_bd_ports btnC] [get_bd_pins Mux2_1_0/sel]
  connect_bd_net -net btnL_1 [get_bd_ports btnL] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net btnR_1 [get_bd_ports btnR] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins BinToBCD16_0/clk] [get_bd_pins EightDispControl_0/clk] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins blk_mem_gen_1/clka] [get_bd_pins blk_mem_gen_2/clka] [get_bd_pins blk_mem_gen_3/clka]
  connect_bd_net -net sw_1 [get_bd_ports sw] [get_bd_pins Mux2_1_0/datain0] [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins blk_mem_gen_1/addra] [get_bd_pins blk_mem_gen_2/addra] [get_bd_pins blk_mem_gen_3/addra]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins Mux4_1_0/sel] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins BinToBCD16_0/request] [get_bd_pins BinToBCD16_0/reset] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins EightDispControl_0/leftL] [get_bd_pins EightDispControl_0/near_leftL] [get_bd_pins EightDispControl_0/near_rightL] [get_bd_pins xlconstant_1/dout]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port btnL -pg 1 -y 1030 -defaultsOSRD
preplace port btnC -pg 1 -y 440 -defaultsOSRD
preplace port btnR -pg 1 -y 1010 -defaultsOSRD
preplace port clk -pg 1 -y 40 -defaultsOSRD
preplace portBus sw -pg 1 -y 800 -defaultsOSRD
preplace portBus an -pg 1 -y 110 -defaultsOSRD
preplace portBus led -pg 1 -y 980 -defaultsOSRD
preplace portBus seg -pg 1 -y 130 -defaultsOSRD
preplace inst EightDispControl_0 -pg 1 -lvl 3 -y 120 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 1 -y 170 -defaultsOSRD
preplace inst xlconstant_1 -pg 1 -lvl 2 -y 300 -defaultsOSRD
preplace inst xlconcat_0 -pg 1 -lvl 2 -y 1020 -defaultsOSRD
preplace inst blk_mem_gen_0 -pg 1 -lvl 3 -y 320 -defaultsOSRD
preplace inst Mux2_1_0 -pg 1 -lvl 1 -y 420 -defaultsOSRD
preplace inst Mux4_1_0 -pg 1 -lvl 3 -y 980 -defaultsOSRD
preplace inst blk_mem_gen_1 -pg 1 -lvl 3 -y 480 -defaultsOSRD
preplace inst BinToBCD16_0 -pg 1 -lvl 2 -y 150 -defaultsOSRD
preplace inst blk_mem_gen_2 -pg 1 -lvl 3 -y 820 -defaultsOSRD
preplace inst blk_mem_gen_3 -pg 1 -lvl 3 -y 660 -defaultsOSRD
preplace netloc xlconstant_1_dout 1 2 1 460
preplace netloc Mux2_1_0_dataout 1 1 1 250
preplace netloc EightDispControl_0_segments 1 3 1 NJ
preplace netloc BinToBCD16_0_BCD0 1 2 1 N
preplace netloc blk_mem_gen_1_douta 1 2 1 510
preplace netloc BinToBCD16_0_BCD1 1 2 1 N
preplace netloc BinToBCD16_0_BCD2 1 2 1 N
preplace netloc btnC_1 1 0 1 NJ
preplace netloc blk_mem_gen_2_douta 1 2 1 520
preplace netloc BinToBCD16_0_BCD3 1 2 1 N
preplace netloc btnL_1 1 0 2 NJ 1030 NJ
preplace netloc BinToBCD16_0_BCD4 1 2 1 N
preplace netloc xlconstant_0_dout 1 1 1 240
preplace netloc xlconcat_0_dout 1 2 1 N
preplace netloc clk_1 1 0 3 NJ 40 240 40 470
preplace netloc blk_mem_gen_3_douta 1 2 1 490
preplace netloc blk_mem_gen_0_douta 1 2 1 500
preplace netloc sw_1 1 0 3 10 800 NJ 800 480
preplace netloc EightDispControl_0_select_display 1 3 1 NJ
preplace netloc btnR_1 1 0 2 NJ 1010 NJ
preplace netloc Mux4_1_0_dataout 1 0 4 20 940 NJ 940 470J 1070 780
levelinfo -pg 1 -10 130 360 650 800 -top 0 -bot 1080
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

