
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
  set clk [ create_bd_port -dir I clk ]
  set seg [ create_bd_port -dir O -from 6 -to 0 seg ]

  # Create instance: BinToBCD16_0, and set properties
  set BinToBCD16_0 [ create_bd_cell -type ip -vlnv ua.pt:user:BinToBCD16:1.0 BinToBCD16_0 ]

  # Create instance: BubbleSorter_0, and set properties
  set BubbleSorter_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:BubbleSorter:1.0 BubbleSorter_0 ]

  # Create instance: ClkDividerN_0, and set properties
  set ClkDividerN_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:ClkDividerN:1.0 ClkDividerN_0 ]
  set_property -dict [ list \
CONFIG.divFactor {100000000} \
 ] $ClkDividerN_0

  # Create instance: Counter_fromX_toY_0, and set properties
  set Counter_fromX_toY_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Counter_fromX_toY:1.0 Counter_fromX_toY_0 ]

  # Create instance: EightDispControl_0, and set properties
  set EightDispControl_0 [ create_bd_cell -type ip -vlnv ua.pt:user:EightDispControl:1.0 EightDispControl_0 ]

  # Create instance: Mux4_1_0, and set properties
  set Mux4_1_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Mux4_1:1.0 Mux4_1_0 ]

  # Create instance: SliceMemory_0, and set properties
  set SliceMemory_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:SliceMemory:1.0 SliceMemory_0 ]

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

  # Create instance: blk_mem_gen_1, and set properties
  set blk_mem_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_1 ]
  set_property -dict [ list \
CONFIG.Byte_Size {9} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Read_Width_A {8} \
CONFIG.Read_Width_B {8} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Write_Width_A {8} \
CONFIG.Write_Width_B {8} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_1

  # Create instance: concat_memory_0, and set properties
  set concat_memory_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:concat_memory:1.0 concat_memory_0 ]
  set_property -dict [ list \
CONFIG.bits {8} \
CONFIG.log_words {4} \
CONFIG.words {16} \
 ] $concat_memory_0

  # Create instance: getAddress_0, and set properties
  set getAddress_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:getAddress:1.0 getAddress_0 ]

  # Create instance: getAddress_1, and set properties
  set getAddress_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:getAddress:1.0 getAddress_1 ]

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
CONFIG.C_SIZE {1} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
CONFIG.C_SIZE {1} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
CONFIG.C_SIZE {1} \
 ] $util_vector_logic_3

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {8} \
CONFIG.IN1_WIDTH {8} \
 ] $xlconcat_0

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {1} \
CONFIG.IN1_WIDTH {1} \
 ] $xlconcat_1

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {44} \
CONFIG.CONST_WIDTH {8} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {120} \
CONFIG.CONST_WIDTH {8} \
 ] $xlconstant_1

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_3

  # Create instance: xlconstant_4, and set properties
  set xlconstant_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_4 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_4

  # Create instance: xlconstant_5, and set properties
  set xlconstant_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_5 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {8} \
 ] $xlconstant_5

  # Create instance: xlconstant_6, and set properties
  set xlconstant_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_6 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_6

  # Create port connections
  connect_bd_net -net BinToBCD16_0_BCD0 [get_bd_pins BinToBCD16_0/BCD0] [get_bd_pins EightDispControl_0/rightR]
  connect_bd_net -net BinToBCD16_0_BCD1 [get_bd_pins BinToBCD16_0/BCD1] [get_bd_pins EightDispControl_0/near_rightR]
  connect_bd_net -net BinToBCD16_0_BCD2 [get_bd_pins BinToBCD16_0/BCD2] [get_bd_pins EightDispControl_0/near_leftR]
  connect_bd_net -net BinToBCD16_0_BCD3 [get_bd_pins BinToBCD16_0/BCD3] [get_bd_pins EightDispControl_0/leftR]
  connect_bd_net -net BinToBCD16_0_BCD4 [get_bd_pins BinToBCD16_0/BCD4] [get_bd_pins EightDispControl_0/rightL]
  connect_bd_net -net BubbleSorter_0_dataOut [get_bd_pins BubbleSorter_0/dataOut] [get_bd_pins SliceMemory_0/dataIn]
  connect_bd_net -net BubbleSorter_0_finished [get_bd_pins BubbleSorter_0/finished] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net ClkDividerN_0_clkOut [get_bd_pins ClkDividerN_0/clkOut] [get_bd_pins Counter_fromX_toY_0/clk]
  connect_bd_net -net Counter_fromX_toY_0_count [get_bd_pins Counter_fromX_toY_0/count] [get_bd_pins Mux4_1_0/datain3]
  connect_bd_net -net EightDispControl_0_segments [get_bd_ports seg] [get_bd_pins EightDispControl_0/segments]
  connect_bd_net -net EightDispControl_0_select_display [get_bd_ports an] [get_bd_pins EightDispControl_0/select_display]
  connect_bd_net -net Mux4_1_0_dataout [get_bd_pins Mux4_1_0/dataout] [get_bd_pins blk_mem_gen_1/addra]
  connect_bd_net -net SliceMemory_0_address [get_bd_pins Mux4_1_0/datain2] [get_bd_pins SliceMemory_0/address]
  connect_bd_net -net SliceMemory_0_dataOut [get_bd_pins SliceMemory_0/dataOut] [get_bd_pins blk_mem_gen_1/dina]
  connect_bd_net -net SliceMemory_0_finished [get_bd_pins SliceMemory_0/finished] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins blk_mem_gen_0/douta] [get_bd_pins concat_memory_0/data_in]
  connect_bd_net -net blk_mem_gen_1_douta [get_bd_pins blk_mem_gen_1/douta] [get_bd_pins getAddress_0/mem_value] [get_bd_pins getAddress_1/mem_value] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins BinToBCD16_0/clk] [get_bd_pins BubbleSorter_0/clock] [get_bd_pins ClkDividerN_0/clkIn] [get_bd_pins EightDispControl_0/clk] [get_bd_pins SliceMemory_0/clock] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins blk_mem_gen_1/clka] [get_bd_pins concat_memory_0/clk] [get_bd_pins getAddress_0/clk] [get_bd_pins getAddress_1/clk]
  connect_bd_net -net concat_memory_0_address [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins concat_memory_0/address]
  connect_bd_net -net concat_memory_0_data_out [get_bd_pins BubbleSorter_0/dataIn] [get_bd_pins concat_memory_0/data_out]
  connect_bd_net -net getAddress_0_addr_out [get_bd_pins Counter_fromX_toY_0/upper] [get_bd_pins Mux4_1_0/datain0] [get_bd_pins getAddress_0/addr_out]
  connect_bd_net -net getAddress_0_finished [get_bd_pins getAddress_0/finished] [get_bd_pins util_vector_logic_1/Op1] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net getAddress_1_addr_out [get_bd_pins Counter_fromX_toY_0/lower] [get_bd_pins Mux4_1_0/datain1] [get_bd_pins getAddress_1/addr_out]
  connect_bd_net -net getAddress_1_finished [get_bd_pins getAddress_1/finished] [get_bd_pins util_vector_logic_1/Op2] [get_bd_pins xlconcat_1/In1]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins blk_mem_gen_1/wea] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins util_vector_logic_1/Res] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_2/Res]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins util_vector_logic_3/Res] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins BinToBCD16_0/binary] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins Mux4_1_0/sel] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins getAddress_1/value] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins getAddress_0/value] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins BinToBCD16_0/request] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins ClkDividerN_0/reset] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlconstant_4_dout [get_bd_pins BinToBCD16_0/reset] [get_bd_pins xlconstant_4/dout]
  connect_bd_net -net xlconstant_5_dout [get_bd_pins xlconcat_0/In1] [get_bd_pins xlconstant_5/dout]
  connect_bd_net -net xlconstant_6_dout [get_bd_pins EightDispControl_0/leftL] [get_bd_pins EightDispControl_0/near_leftL] [get_bd_pins EightDispControl_0/near_rightL] [get_bd_pins xlconstant_6/dout]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   commentid: "",
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port clk -pg 1 -y 80 -defaultsOSRD
preplace portBus an -pg 1 -y 720 -defaultsOSRD
preplace portBus seg -pg 1 -y 740 -defaultsOSRD
preplace inst EightDispControl_0 -pg 1 -lvl 6 -y 730 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 1 -y 290 -defaultsOSRD
preplace inst concat_memory_0 -pg 1 -lvl 1 -y 160 -defaultsOSRD
preplace inst xlconstant_1 -pg 1 -lvl 1 -y 430 -defaultsOSRD
preplace inst xlconstant_2 -pg 1 -lvl 4 -y 830 -defaultsOSRD
preplace inst getAddress_0 -pg 1 -lvl 2 -y 430 -defaultsOSRD
preplace inst SliceMemory_0 -pg 1 -lvl 3 -y 410 -defaultsOSRD
preplace inst xlconcat_0 -pg 1 -lvl 4 -y 640 -defaultsOSRD
preplace inst util_vector_logic_0 -pg 1 -lvl 5 -y 530 -defaultsOSRD
preplace inst xlconstant_3 -pg 1 -lvl 2 -y 550 -defaultsOSRD
preplace inst getAddress_1 -pg 1 -lvl 2 -y 290 -defaultsOSRD
preplace inst Counter_fromX_toY_0 -pg 1 -lvl 4 -y 510 -defaultsOSRD
preplace inst xlconstant_4 -pg 1 -lvl 4 -y 750 -defaultsOSRD
preplace inst util_vector_logic_1 -pg 1 -lvl 3 -y 280 -defaultsOSRD
preplace inst BubbleSorter_0 -pg 1 -lvl 2 -y 180 -defaultsOSRD
preplace inst blk_mem_gen_0 -pg 1 -lvl 6 -y 80 -defaultsOSRD
preplace inst xlconcat_1 -pg 1 -lvl 4 -y 190 -defaultsOSRD
preplace inst util_vector_logic_2 -pg 1 -lvl 4 -y 290 -defaultsOSRD
preplace inst xlconstant_5 -pg 1 -lvl 3 -y 650 -defaultsOSRD
preplace inst blk_mem_gen_1 -pg 1 -lvl 6 -y 470 -defaultsOSRD
preplace inst Mux4_1_0 -pg 1 -lvl 5 -y 380 -defaultsOSRD
preplace inst xlconstant_6 -pg 1 -lvl 5 -y 630 -defaultsOSRD
preplace inst BinToBCD16_0 -pg 1 -lvl 5 -y 760 -defaultsOSRD
preplace inst util_vector_logic_3 -pg 1 -lvl 3 -y 160 -defaultsOSRD
preplace inst ClkDividerN_0 -pg 1 -lvl 3 -y 560 -defaultsOSRD
preplace netloc SliceMemory_0_finished 1 3 1 810
preplace netloc xlconstant_5_dout 1 3 1 NJ
preplace netloc concat_memory_0_data_out 1 1 1 270
preplace netloc getAddress_0_addr_out 1 2 3 540 340 800 420 1070
preplace netloc xlconstant_1_dout 1 1 1 NJ
preplace netloc EightDispControl_0_segments 1 6 1 NJ
preplace netloc BinToBCD16_0_BCD0 1 5 1 N
preplace netloc xlconstant_2_dout 1 4 1 1100J
preplace netloc blk_mem_gen_1_douta 1 1 5 290 500 NJ 500 830 440 1070J 480 1350
preplace netloc BinToBCD16_0_BCD1 1 5 1 N
preplace netloc BubbleSorter_0_dataOut 1 2 1 550
preplace netloc BinToBCD16_0_BCD2 1 5 1 N
preplace netloc util_vector_logic_3_Res 1 3 1 820
preplace netloc ClkDividerN_0_clkOut 1 3 1 840
preplace netloc BinToBCD16_0_BCD3 1 5 1 N
preplace netloc SliceMemory_0_address 1 3 2 N 390 1080J
preplace netloc util_vector_logic_0_Res 1 5 1 1350J
preplace netloc xlconcat_1_dout 1 4 1 1130
preplace netloc BinToBCD16_0_BCD4 1 5 1 N
preplace netloc getAddress_1_addr_out 1 2 3 540J 220 820 360 NJ
preplace netloc xlconcat_0_dout 1 4 1 1080
preplace netloc xlconstant_0_dout 1 1 1 NJ
preplace netloc getAddress_0_finished 1 2 1 570
preplace netloc clk_1 1 0 6 20 80 280 80 560 80 NJ 80 1110 80 1370
preplace netloc xlconstant_6_dout 1 5 1 1350
preplace netloc getAddress_1_finished 1 2 2 530 100 840
preplace netloc xlconstant_4_dout 1 4 1 NJ
preplace netloc BubbleSorter_0_finished 1 2 1 N
preplace netloc blk_mem_gen_0_douta 1 0 6 30 90 NJ 90 NJ 90 NJ 90 NJ 90 1380J
preplace netloc util_vector_logic_1_Res 1 3 1 N
preplace netloc util_vector_logic_2_Res 1 4 1 1090
preplace netloc Counter_fromX_toY_0_count 1 4 1 1120
preplace netloc EightDispControl_0_select_display 1 6 1 NJ
preplace netloc Mux4_1_0_dataout 1 5 1 1380
preplace netloc SliceMemory_0_dataOut 1 3 3 N 430 1100J 470 1360J
preplace netloc concat_memory_0_address 1 1 5 290 60 NJ 60 NJ 60 NJ 60 NJ
preplace netloc xlconstant_3_dout 1 2 1 NJ
levelinfo -pg 1 0 150 410 690 960 1240 1510 1660 -top -30 -bot 880
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


