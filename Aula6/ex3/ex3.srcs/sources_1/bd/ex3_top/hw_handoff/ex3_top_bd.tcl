
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
  set clk [ create_bd_port -dir I clk ]
  set led [ create_bd_port -dir O -from 8 -to 0 led ]

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
CONFIG.B_Value {0000} \
CONFIG.B_Width {4} \
CONFIG.CE {false} \
CONFIG.C_In {false} \
CONFIG.Implementation {Fabric} \
CONFIG.Latency {0} \
CONFIG.Out_Width {4} \
 ] $c_addsub_0

  # Create instance: concat_memory_0, and set properties
  set concat_memory_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:concat_memory:1.0 concat_memory_0 ]
  set_property -dict [ list \
CONFIG.bits {8} \
CONFIG.log_words {4} \
CONFIG.words {16} \
 ] $concat_memory_0

  # Create instance: max_0, and set properties
  set max_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:max:1.0 max_0 ]
  set_property -dict [ list \
CONFIG.M {8} \
CONFIG.N {16} \
 ] $max_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create port connections
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins blk_mem_gen_0/douta] [get_bd_pins concat_memory_0/data_in]
  connect_bd_net -net c_addsub_0_S [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins c_addsub_0/S]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins concat_memory_0/clk]
  connect_bd_net -net concat_memory_0_address [get_bd_pins c_addsub_0/A] [get_bd_pins concat_memory_0/address]
  connect_bd_net -net concat_memory_0_data_out [get_bd_pins concat_memory_0/data_out] [get_bd_pins max_0/data_in]
  connect_bd_net -net max_0_finished [get_bd_pins max_0/finished] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net max_0_max_value [get_bd_pins max_0/max_value] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net xlconcat_0_dout [get_bd_ports led] [get_bd_pins xlconcat_0/dout]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port clk -pg 1 -y -300 -defaultsOSRD
preplace portBus led -pg 1 -y -70 -defaultsOSRD
preplace inst concat_memory_0 -pg 1 -lvl 2 -y -170 -defaultsOSRD
preplace inst c_addsub_0 -pg 1 -lvl 1 -y 90 -defaultsOSRD
preplace inst xlconcat_0 -pg 1 -lvl 4 -y -70 -defaultsOSRD
preplace inst blk_mem_gen_0 -pg 1 -lvl 2 -y 80 -defaultsOSRD
preplace inst max_0 -pg 1 -lvl 3 -y 20 -defaultsOSRD
preplace netloc concat_memory_0_data_out 1 2 1 110
preplace netloc xlconcat_0_dout 1 4 1 N
preplace netloc max_0_finished 1 3 1 350
preplace netloc max_0_max_value 1 3 1 360
preplace netloc clk_1 1 0 2 N -300 -200
preplace netloc blk_mem_gen_0_douta 1 1 1 -180
preplace netloc c_addsub_0_S 1 1 1 -190
preplace netloc concat_memory_0_address 1 0 3 -370 -110 NJ -110 100
levelinfo -pg 1 -390 -280 -20 230 450 560 -top -420 -bot 350
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


