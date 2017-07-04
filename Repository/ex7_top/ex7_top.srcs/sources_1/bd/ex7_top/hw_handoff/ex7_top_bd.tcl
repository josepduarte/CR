
################################################################
# This is a generated script based on design: ex7_top
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
# source ex7_top_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-3
}


# CHANGE DESIGN NAME HERE
set design_name ex7_top

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
  set clk [ create_bd_port -dir I clk ]
  set led [ create_bd_port -dir O -from 15 -to 0 led ]
  set seg [ create_bd_port -dir O -from 6 -to 0 seg ]

  # Create instance: BinToBCD16_1, and set properties
  set BinToBCD16_1 [ create_bd_cell -type ip -vlnv ua.pt:user:BinToBCD16:1.0 BinToBCD16_1 ]

  # Create instance: BinToBCD16_2, and set properties
  set BinToBCD16_2 [ create_bd_cell -type ip -vlnv ua.pt:user:BinToBCD16:1.0 BinToBCD16_2 ]

  # Create instance: ClkDividerN_0, and set properties
  set ClkDividerN_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:ClkDividerN:1.0 ClkDividerN_0 ]
  set_property -dict [ list \
CONFIG.divFactor {100000000} \
 ] $ClkDividerN_0

  # Create instance: EightDispControl_0, and set properties
  set EightDispControl_0 [ create_bd_cell -type ip -vlnv ua.pt:user:EightDispControl:1.0 EightDispControl_0 ]

  # Create instance: SliceMemory_0, and set properties
  set SliceMemory_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:SliceMemory:1.0 SliceMemory_0 ]
  set_property -dict [ list \
CONFIG.bits {22} \
CONFIG.log_words {3} \
CONFIG.words {8} \
 ] $SliceMemory_0

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
CONFIG.Read_Width_A {22} \
CONFIG.Read_Width_B {22} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Write_Width_A {22} \
CONFIG.Write_Width_B {22} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: blk_mem_gen_1, and set properties
  set blk_mem_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_1 ]
  set_property -dict [ list \
CONFIG.Byte_Size {9} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Enable_B {Always_Enabled} \
CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
CONFIG.Operating_Mode_A {NO_CHANGE} \
CONFIG.Port_B_Clock {100} \
CONFIG.Port_B_Enable_Rate {100} \
CONFIG.Read_Width_A {22} \
CONFIG.Read_Width_B {22} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Write_Width_A {22} \
CONFIG.Write_Width_B {22} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_1

  # Create instance: concat_memory_0, and set properties
  set concat_memory_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:concat_memory:1.0 concat_memory_0 ]
  set_property -dict [ list \
CONFIG.bits {22} \
CONFIG.log_words {3} \
CONFIG.words {8} \
 ] $concat_memory_0

  # Create instance: counter_generic_0, and set properties
  set counter_generic_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:counter_generic:1.0 counter_generic_0 ]
  set_property -dict [ list \
CONFIG.nr_bits {3} \
 ] $counter_generic_0

  # Create instance: sort_0, and set properties
  set sort_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:sort:1.0 sort_0 ]

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {6} \
CONFIG.IN1_WIDTH {10} \
CONFIG.NUM_PORTS {2} \
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
CONFIG.CONST_WIDTH {2} \
 ] $xlconstant_2

  # Create instance: xlconstant_4, and set properties
  set xlconstant_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_4 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {10} \
 ] $xlconstant_4

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {15} \
CONFIG.DIN_TO {0} \
CONFIG.DIN_WIDTH {22} \
CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {21} \
CONFIG.DIN_TO {16} \
CONFIG.DIN_WIDTH {22} \
CONFIG.DOUT_WIDTH {6} \
 ] $xlslice_1

  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {15} \
CONFIG.DIN_TO {0} \
CONFIG.DIN_WIDTH {22} \
CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_2

  # Create port connections
  connect_bd_net -net BinToBCD16_1_BCD0 [get_bd_pins BinToBCD16_1/BCD0] [get_bd_pins EightDispControl_0/rightR]
  connect_bd_net -net BinToBCD16_1_BCD1 [get_bd_pins BinToBCD16_1/BCD1] [get_bd_pins EightDispControl_0/near_rightR]
  connect_bd_net -net BinToBCD16_1_BCD2 [get_bd_pins BinToBCD16_1/BCD2] [get_bd_pins EightDispControl_0/near_leftR]
  connect_bd_net -net BinToBCD16_1_BCD3 [get_bd_pins BinToBCD16_1/BCD3] [get_bd_pins EightDispControl_0/leftR]
  connect_bd_net -net BinToBCD16_1_BCD4 [get_bd_pins BinToBCD16_1/BCD4] [get_bd_pins EightDispControl_0/rightL]
  connect_bd_net -net BinToBCD16_2_BCD0 [get_bd_pins BinToBCD16_2/BCD0] [get_bd_pins EightDispControl_0/near_rightL]
  connect_bd_net -net BinToBCD16_2_BCD1 [get_bd_pins BinToBCD16_2/BCD1] [get_bd_pins EightDispControl_0/near_leftL]
  connect_bd_net -net BinToBCD16_2_BCD2 [get_bd_pins BinToBCD16_2/BCD2] [get_bd_pins EightDispControl_0/leftL]
  connect_bd_net -net EightDispControl_0_segments [get_bd_ports seg] [get_bd_pins EightDispControl_0/segments]
  connect_bd_net -net EightDispControl_0_select_display [get_bd_ports an] [get_bd_pins EightDispControl_0/select_display]
  connect_bd_net -net SliceMemory_0_address [get_bd_pins SliceMemory_0/address] [get_bd_pins blk_mem_gen_1/addra]
  connect_bd_net -net SliceMemory_0_dataOut [get_bd_pins SliceMemory_0/dataOut] [get_bd_pins blk_mem_gen_1/dina]
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins blk_mem_gen_0/douta] [get_bd_pins concat_memory_0/data_in] [get_bd_pins xlslice_2/Din]
  connect_bd_net -net blk_mem_gen_1_doutb [get_bd_pins blk_mem_gen_1/doutb] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins BinToBCD16_1/clk] [get_bd_pins BinToBCD16_2/clk] [get_bd_pins ClkDividerN_0/clkIn] [get_bd_pins EightDispControl_0/clk] [get_bd_pins SliceMemory_0/clock] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins blk_mem_gen_1/clka] [get_bd_pins blk_mem_gen_1/clkb] [get_bd_pins concat_memory_0/clk] [get_bd_pins counter_generic_0/clk]
  connect_bd_net -net concat_memory_0_address [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins concat_memory_0/address]
  connect_bd_net -net concat_memory_0_data_out [get_bd_pins concat_memory_0/data_out] [get_bd_pins sort_0/dataIn]
  connect_bd_net -net counter_generic_0_led [get_bd_pins blk_mem_gen_1/addrb] [get_bd_pins counter_generic_0/led]
  connect_bd_net -net sort_0_dataOut [get_bd_pins SliceMemory_0/dataIn] [get_bd_pins sort_0/dataOut]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins BinToBCD16_2/binary] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins BinToBCD16_1/reset] [get_bd_pins BinToBCD16_2/reset] [get_bd_pins ClkDividerN_0/reset] [get_bd_pins counter_generic_0/btnC] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins BinToBCD16_1/request] [get_bd_pins BinToBCD16_2/request] [get_bd_pins blk_mem_gen_1/wea] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins counter_generic_0/sw] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlconstant_4_dout [get_bd_pins xlconcat_0/In1] [get_bd_pins xlconstant_4/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins BinToBCD16_1/binary] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins xlconcat_0/In0] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_ports led] [get_bd_pins xlslice_2/Dout]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port clk -pg 1 -y 160 -defaultsOSRD
preplace portBus an -pg 1 -y 540 -defaultsOSRD
preplace portBus led -pg 1 -y -140 -defaultsOSRD
preplace portBus seg -pg 1 -y 560 -defaultsOSRD
preplace inst xlslice_0 -pg 1 -lvl 5 -y 720 -defaultsOSRD
preplace inst EightDispControl_0 -pg 1 -lvl 10 -y 550 -defaultsOSRD
preplace inst xlslice_1 -pg 1 -lvl 5 -y 640 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 1 -y 410 -defaultsOSRD
preplace inst counter_generic_0 -pg 1 -lvl 3 -y 610 -defaultsOSRD
preplace inst xlslice_2 -pg 1 -lvl 4 -y -110 -defaultsOSRD
preplace inst xlconstant_1 -pg 1 -lvl 6 -y 360 -defaultsOSRD
preplace inst concat_memory_0 -pg 1 -lvl 1 -y 270 -defaultsOSRD
preplace inst xlconstant_2 -pg 1 -lvl 2 -y 630 -defaultsOSRD
preplace inst xlconcat_0 -pg 1 -lvl 7 -y 670 -defaultsOSRD
preplace inst SliceMemory_0 -pg 1 -lvl 2 -y 90 -defaultsOSRD
preplace inst xlconstant_4 -pg 1 -lvl 6 -y 590 -defaultsOSRD
preplace inst blk_mem_gen_0 -pg 1 -lvl 2 -y 320 -defaultsOSRD
preplace inst blk_mem_gen_1 -pg 1 -lvl 8 -y 160 -defaultsOSRD
preplace inst sort_0 -pg 1 -lvl 1 -y 100 -defaultsOSRD
preplace inst BinToBCD16_1 -pg 1 -lvl 9 -y 630 -defaultsOSRD
preplace inst ClkDividerN_0 -pg 1 -lvl 2 -y 470 -defaultsOSRD
preplace inst BinToBCD16_2 -pg 1 -lvl 9 -y 310 -defaultsOSRD
preplace netloc concat_memory_0_data_out 1 0 2 40 150 380
preplace netloc BinToBCD16_2_BCD1 1 9 1 2000
preplace netloc BinToBCD16_1_BCD4 1 9 1 1990
preplace netloc xlconstant_1_dout 1 6 3 NJ 360 1530 360 1790J
preplace netloc xlconstant_2_dout 1 2 1 630
preplace netloc BinToBCD16_2_BCD2 1 9 1 2010
preplace netloc xlslice_1_Dout 1 5 2 NJ 640 1310J
preplace netloc EightDispControl_0_segments 1 10 1 NJ
preplace netloc blk_mem_gen_1_doutb 1 4 4 990 240 NJ 240 NJ 240 NJ
preplace netloc SliceMemory_0_address 1 2 6 NJ 70 NJ 70 NJ 70 NJ 70 NJ 70 1510
preplace netloc sort_0_dataOut 1 1 1 N
preplace netloc xlconcat_0_dout 1 7 2 NJ 670 1760J
preplace netloc clk_1 1 0 10 20 160 400 160 650J 160 NJ 160 NJ 160 NJ 160 NJ 160 1520J 290 1770J 470 NJ
preplace netloc xlconstant_0_dout 1 1 8 380 410 640J 410 NJ 410 NJ 410 NJ 410 NJ 410 NJ 410 1780J
preplace netloc xlslice_2_Dout 1 4 7 NJ -110 NJ -110 NJ -110 NJ -110 NJ -110 NJ -110 2290
preplace netloc BinToBCD16_1_BCD0 1 9 1 2030
preplace netloc xlconstant_4_dout 1 6 1 1320
preplace netloc blk_mem_gen_0_douta 1 0 4 30J -110 410J -110 NJ -110 NJ
preplace netloc counter_generic_0_led 1 3 5 810 200 NJ 200 NJ 200 NJ 200 NJ
preplace netloc BinToBCD16_1_BCD1 1 9 1 2020
preplace netloc BinToBCD16_1_BCD2 1 9 1 2010
preplace netloc EightDispControl_0_select_display 1 10 1 NJ
preplace netloc SliceMemory_0_dataOut 1 2 6 NJ 110 NJ 110 NJ 110 NJ 110 NJ 110 1510
preplace netloc BinToBCD16_2_BCD0 1 9 1 1990
preplace netloc BinToBCD16_1_BCD3 1 9 1 2000
preplace netloc xlslice_0_Dout 1 5 4 N 720 1330J 610 NJ 610 1750J
preplace netloc concat_memory_0_address 1 1 1 390
levelinfo -pg 1 0 260 520 730 900 1090 1250 1420 1650 1890 2160 2310 -top -190 -bot 940
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


