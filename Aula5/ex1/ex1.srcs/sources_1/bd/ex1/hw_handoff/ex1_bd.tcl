
################################################################
# This is a generated script based on design: ex1
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
# source ex1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-3
}


# CHANGE DESIGN NAME HERE
set design_name ex1

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
  set seg [ create_bd_port -dir O -from 6 -to 0 seg ]
  set sw [ create_bd_port -dir I -from 1 -to 0 sw ]

  # Create instance: BinToBCD16_0, and set properties
  set BinToBCD16_0 [ create_bd_cell -type ip -vlnv ua.pt:user:BinToBCD16:1.0 BinToBCD16_0 ]

  # Create instance: BinToBCD16_1, and set properties
  set BinToBCD16_1 [ create_bd_cell -type ip -vlnv ua.pt:user:BinToBCD16:1.0 BinToBCD16_1 ]

  # Create instance: EightDispControl_0, and set properties
  set EightDispControl_0 [ create_bd_cell -type ip -vlnv ua.pt:user:EightDispControl:1.0 EightDispControl_0 ]

  # Create instance: Mux2_1_0, and set properties
  set Mux2_1_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux2_1:1.0 Mux2_1_0 ]
  set_property -dict [ list \
CONFIG.number_of_bits {1} \
 ] $Mux2_1_0

  # Create instance: Mux4_1_0, and set properties
  set Mux4_1_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux4_1:1.0 Mux4_1_0 ]
  set_property -dict [ list \
CONFIG.number_of_bits {23} \
 ] $Mux4_1_0

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0 ]
  set_property -dict [ list \
CONFIG.Byte_Size {9} \
CONFIG.Coe_File {../../../../../../vector128_16bits_random.coe} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Fill_Remaining_Memory_Locations {true} \
CONFIG.Load_Init_File {true} \
CONFIG.Memory_Type {Single_Port_ROM} \
CONFIG.Port_A_Write_Rate {0} \
CONFIG.Read_Width_A {16} \
CONFIG.Read_Width_B {16} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Write_Width_A {16} \
CONFIG.Write_Width_B {16} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: counter_generic_0, and set properties
  set counter_generic_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:counter_generic:1.0 counter_generic_0 ]
  set_property -dict [ list \
CONFIG.nr_bits {7} \
 ] $counter_generic_0

  # Create instance: counter_generic_1, and set properties
  set counter_generic_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:counter_generic:1.0 counter_generic_1 ]
  set_property -dict [ list \
CONFIG.nr_bits {7} \
 ] $counter_generic_1

  # Create instance: counter_generic_2, and set properties
  set counter_generic_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:counter_generic:1.0 counter_generic_2 ]
  set_property -dict [ list \
CONFIG.nr_bits {7} \
 ] $counter_generic_2

  # Create instance: dist_mem_gen_0, and set properties
  set dist_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 dist_mem_gen_0 ]
  set_property -dict [ list \
CONFIG.depth {128} \
 ] $dist_mem_gen_0

  # Create instance: dist_mem_gen_1, and set properties
  set dist_mem_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 dist_mem_gen_1 ]
  set_property -dict [ list \
CONFIG.depth {128} \
 ] $dist_mem_gen_1

  # Create instance: util_reduced_logic_0, and set properties
  set util_reduced_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 util_reduced_logic_0 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {and} \
CONFIG.C_SIZE {7} \
 ] $util_reduced_logic_0

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {16} \
CONFIG.IN1_WIDTH {7} \
 ] $xlconcat_0

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {16} \
CONFIG.IN1_WIDTH {7} \
 ] $xlconcat_1

  # Create instance: xlconcat_2, and set properties
  set xlconcat_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_2 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {16} \
CONFIG.IN1_WIDTH {7} \
 ] $xlconcat_2

  # Create instance: xlconcat_3, and set properties
  set xlconcat_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_3 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {7} \
CONFIG.IN1_WIDTH {7} \
 ] $xlconcat_3

  # Create instance: xlconcat_4, and set properties
  set xlconcat_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_4 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {14} \
CONFIG.IN1_WIDTH {9} \
 ] $xlconcat_4

  # Create instance: xlconcat_5, and set properties
  set xlconcat_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_5 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {7} \
CONFIG.IN1_WIDTH {9} \
 ] $xlconcat_5

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
CONFIG.CONST_WIDTH {2} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_1

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {9} \
 ] $xlconstant_2

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]

  # Create instance: xlconstant_4, and set properties
  set xlconstant_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_4 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {9} \
 ] $xlconstant_4

  # Create instance: xlconstant_5, and set properties
  set xlconstant_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_5 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_5

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {0} \
CONFIG.DIN_TO {0} \
CONFIG.DIN_WIDTH {16} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {15} \
CONFIG.DIN_TO {0} \
CONFIG.DIN_WIDTH {23} \
CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_1

  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {22} \
CONFIG.DIN_TO {16} \
CONFIG.DIN_WIDTH {23} \
CONFIG.DOUT_WIDTH {7} \
 ] $xlslice_2

  # Create port connections
  connect_bd_net -net BinToBCD16_0_BCD0 [get_bd_pins BinToBCD16_0/BCD0] [get_bd_pins EightDispControl_0/rightR]
  connect_bd_net -net BinToBCD16_0_BCD1 [get_bd_pins BinToBCD16_0/BCD1] [get_bd_pins EightDispControl_0/near_rightR]
  connect_bd_net -net BinToBCD16_0_BCD2 [get_bd_pins BinToBCD16_0/BCD2] [get_bd_pins EightDispControl_0/near_leftR]
  connect_bd_net -net BinToBCD16_0_BCD3 [get_bd_pins BinToBCD16_0/BCD3] [get_bd_pins EightDispControl_0/leftR]
  connect_bd_net -net BinToBCD16_0_BCD4 [get_bd_pins BinToBCD16_0/BCD4] [get_bd_pins EightDispControl_0/rightL]
  connect_bd_net -net BinToBCD16_1_BCD0 [get_bd_pins BinToBCD16_1/BCD0] [get_bd_pins EightDispControl_0/near_rightL]
  connect_bd_net -net BinToBCD16_1_BCD1 [get_bd_pins BinToBCD16_1/BCD1] [get_bd_pins EightDispControl_0/near_leftL]
  connect_bd_net -net BinToBCD16_1_BCD2 [get_bd_pins BinToBCD16_1/BCD2] [get_bd_pins EightDispControl_0/leftL]
  connect_bd_net -net EightDispControl_0_segments [get_bd_ports seg] [get_bd_pins EightDispControl_0/segments]
  connect_bd_net -net EightDispControl_0_select_display [get_bd_ports an] [get_bd_pins EightDispControl_0/select_display]
  connect_bd_net -net Mux2_1_0_dataout [get_bd_pins Mux2_1_0/dataout] [get_bd_pins counter_generic_0/clk]
  connect_bd_net -net Mux4_1_0_dataout [get_bd_pins Mux4_1_0/dataout] [get_bd_pins xlslice_1/Din] [get_bd_pins xlslice_2/Din]
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins blk_mem_gen_0/douta] [get_bd_pins dist_mem_gen_0/d] [get_bd_pins dist_mem_gen_1/d] [get_bd_pins xlconcat_2/In0] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins BinToBCD16_0/clk] [get_bd_pins BinToBCD16_1/clk] [get_bd_pins EightDispControl_0/clk] [get_bd_pins Mux2_1_0/datain0] [get_bd_pins blk_mem_gen_0/clka]
  connect_bd_net -net counter_generic_0_led [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins counter_generic_0/led] [get_bd_pins dist_mem_gen_0/a] [get_bd_pins dist_mem_gen_1/a] [get_bd_pins util_reduced_logic_0/Op1] [get_bd_pins xlconcat_0/In1] [get_bd_pins xlconcat_1/In1] [get_bd_pins xlconcat_2/In1]
  connect_bd_net -net counter_generic_1_led [get_bd_pins counter_generic_1/led] [get_bd_pins xlconcat_3/In0]
  connect_bd_net -net counter_generic_2_led [get_bd_pins counter_generic_2/led] [get_bd_pins xlconcat_3/In1]
  connect_bd_net -net dist_mem_gen_0_spo [get_bd_pins dist_mem_gen_0/spo] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net dist_mem_gen_1_spo [get_bd_pins dist_mem_gen_1/spo] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net sw_1 [get_bd_ports sw] [get_bd_pins Mux4_1_0/sel]
  connect_bd_net -net util_reduced_logic_0_Res [get_bd_pins Mux2_1_0/sel] [get_bd_pins util_reduced_logic_0/Res]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins counter_generic_2/clk] [get_bd_pins dist_mem_gen_0/clk] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins Mux4_1_0/datain0] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins Mux4_1_0/datain1] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconcat_2_dout [get_bd_pins Mux4_1_0/datain2] [get_bd_pins xlconcat_2/dout]
  connect_bd_net -net xlconcat_3_dout [get_bd_pins xlconcat_3/dout] [get_bd_pins xlconcat_4/In0]
  connect_bd_net -net xlconcat_4_dout [get_bd_pins Mux4_1_0/datain3] [get_bd_pins xlconcat_4/dout]
  connect_bd_net -net xlconcat_5_dout [get_bd_pins BinToBCD16_1/binary] [get_bd_pins xlconcat_5/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins counter_generic_0/sw] [get_bd_pins counter_generic_1/sw] [get_bd_pins counter_generic_2/sw] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins counter_generic_0/btnC] [get_bd_pins counter_generic_1/btnC] [get_bd_pins counter_generic_2/btnC] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins xlconcat_5/In1] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins BinToBCD16_0/request] [get_bd_pins BinToBCD16_1/request] [get_bd_pins dist_mem_gen_0/we] [get_bd_pins dist_mem_gen_1/we] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlconstant_4_dout [get_bd_pins xlconcat_4/In1] [get_bd_pins xlconstant_4/dout]
  connect_bd_net -net xlconstant_5_dout [get_bd_pins BinToBCD16_0/reset] [get_bd_pins BinToBCD16_1/reset] [get_bd_pins Mux2_1_0/datain1] [get_bd_pins xlconstant_5/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins counter_generic_1/clk] [get_bd_pins dist_mem_gen_1/clk] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins BinToBCD16_0/binary] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins xlconcat_5/In0] [get_bd_pins xlslice_2/Dout]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port clk -pg 1 -y 710 -defaultsOSRD
preplace portBus sw -pg 1 -y 500 -defaultsOSRD
preplace portBus an -pg 1 -y 710 -defaultsOSRD
preplace portBus seg -pg 1 -y 730 -defaultsOSRD
preplace inst EightDispControl_0 -pg 1 -lvl 12 -y 720 -defaultsOSRD
preplace inst xlslice_0 -pg 1 -lvl 3 -y 60 -defaultsOSRD
preplace inst xlslice_1 -pg 1 -lvl 10 -y 760 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 4 -y 190 -defaultsOSRD
preplace inst xlslice_2 -pg 1 -lvl 9 -y 490 -defaultsOSRD
preplace inst xlconstant_1 -pg 1 -lvl 4 -y 270 -defaultsOSRD
preplace inst counter_generic_0 -pg 1 -lvl 5 -y 350 -defaultsOSRD
preplace inst dist_mem_gen_0 -pg 1 -lvl 6 -y 240 -defaultsOSRD
preplace inst counter_generic_1 -pg 1 -lvl 5 -y 80 -defaultsOSRD
preplace inst xlconstant_2 -pg 1 -lvl 9 -y 570 -defaultsOSRD
preplace inst dist_mem_gen_1 -pg 1 -lvl 6 -y 100 -defaultsOSRD
preplace inst counter_generic_2 -pg 1 -lvl 5 -y 230 -defaultsOSRD
preplace inst util_vector_logic_0 -pg 1 -lvl 4 -y 110 -defaultsOSRD
preplace inst xlconstant_3 -pg 1 -lvl 5 -y 450 -defaultsOSRD
preplace inst xlconcat_0 -pg 1 -lvl 7 -y 340 -defaultsOSRD
preplace inst xlconstant_4 -pg 1 -lvl 6 -y 450 -defaultsOSRD
preplace inst util_vector_logic_1 -pg 1 -lvl 2 -y 630 -defaultsOSRD
preplace inst xlconcat_1 -pg 1 -lvl 7 -y 240 -defaultsOSRD
preplace inst blk_mem_gen_0 -pg 1 -lvl 6 -y 610 -defaultsOSRD
preplace inst util_reduced_logic_0 -pg 1 -lvl 3 -y 640 -defaultsOSRD
preplace inst Mux2_1_0 -pg 1 -lvl 4 -y 620 -defaultsOSRD
preplace inst xlconstant_5 -pg 1 -lvl 3 -y 560 -defaultsOSRD
preplace inst xlconcat_2 -pg 1 -lvl 7 -y 560 -defaultsOSRD
preplace inst Mux4_1_0 -pg 1 -lvl 8 -y 460 -defaultsOSRD
preplace inst xlconstant_6 -pg 1 -lvl 1 -y 620 -defaultsOSRD
preplace inst xlconcat_3 -pg 1 -lvl 6 -y 360 -defaultsOSRD
preplace inst BinToBCD16_0 -pg 1 -lvl 11 -y 750 -defaultsOSRD
preplace inst xlconcat_4 -pg 1 -lvl 7 -y 440 -defaultsOSRD
preplace inst BinToBCD16_1 -pg 1 -lvl 11 -y 550 -defaultsOSRD
preplace inst xlconcat_5 -pg 1 -lvl 10 -y 560 -defaultsOSRD
preplace netloc Mux2_1_0_dataout 1 4 1 820
preplace netloc xlconstant_5_dout 1 3 8 560 740 NJ 740 NJ 740 NJ 740 NJ 740 NJ 740 1840J 620 2030
preplace netloc xlconstant_1_dout 1 4 1 810
preplace netloc EightDispControl_0_segments 1 12 1 NJ
preplace netloc BinToBCD16_0_BCD0 1 11 1 N
preplace netloc xlslice_1_Dout 1 10 1 NJ
preplace netloc xlconstant_2_dout 1 9 1 NJ
preplace netloc BinToBCD16_0_BCD1 1 11 1 N
preplace netloc BinToBCD16_0_BCD2 1 11 1 N
preplace netloc util_vector_logic_0_Res 1 4 2 790 160 1010
preplace netloc BinToBCD16_0_BCD3 1 11 1 N
preplace netloc xlconcat_5_dout 1 10 1 N
preplace netloc xlconcat_1_dout 1 7 1 1440
preplace netloc counter_generic_1_led 1 5 1 1020
preplace netloc BinToBCD16_0_BCD4 1 11 1 N
preplace netloc xlconcat_3_dout 1 6 1 1230
preplace netloc clk_1 1 0 12 NJ 710 NJ 710 NJ 710 570 710 NJ 710 1020 710 NJ 710 NJ 710 NJ 710 NJ 710 2020 650 2260
preplace netloc counter_generic_2_led 1 5 1 980
preplace netloc xlconcat_0_dout 1 7 1 1430
preplace netloc dist_mem_gen_0_spo 1 6 1 1230
preplace netloc xlconstant_0_dout 1 4 1 800
preplace netloc util_reduced_logic_0_Res 1 3 1 NJ
preplace netloc xlconstant_6_dout 1 1 1 NJ
preplace netloc xlslice_2_Dout 1 9 1 1840J
preplace netloc blk_mem_gen_0_douta 1 2 5 360 10 NJ 10 NJ 10 1000 10 1240J
preplace netloc xlconstant_4_dout 1 6 1 NJ
preplace netloc BinToBCD16_1_BCD0 1 11 1 2240
preplace netloc util_vector_logic_1_Res 1 2 1 360
preplace netloc BinToBCD16_1_BCD1 1 11 1 2250
preplace netloc sw_1 1 0 8 NJ 500 NJ 500 NJ 500 NJ 500 NJ 500 NJ 500 NJ 500 NJ
preplace netloc counter_generic_0_led 1 1 6 140 720 NJ 720 NJ 720 NJ 720 990 720 1250
preplace netloc xlconcat_4_dout 1 7 1 1430
preplace netloc EightDispControl_0_select_display 1 12 1 NJ
preplace netloc BinToBCD16_1_BCD2 1 11 1 2270
preplace netloc Mux4_1_0_dataout 1 8 2 1660 760 NJ
preplace netloc xlconcat_2_dout 1 7 1 1440
preplace netloc xlslice_0_Dout 1 3 3 560 60 820 150 980J
preplace netloc xlconstant_3_dout 1 5 6 1030 700 NJ 700 NJ 700 NJ 700 NJ 700 2040
preplace netloc dist_mem_gen_1_spo 1 6 1 1250
levelinfo -pg 1 0 80 250 460 680 900 1130 1340 1550 1750 1930 2140 2400 2550 -top 0 -bot 850
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


