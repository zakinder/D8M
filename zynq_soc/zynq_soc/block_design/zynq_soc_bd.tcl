
################################################################
# This is a generated script based on design: zynq_soc
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
set scripts_vivado_version 2017.2
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
# source zynq_soc_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-1
   set_property BOARD_PART em.avnet.com:zedboardcustom:part0:1.3 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name zynq_soc

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
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set camera_i2c [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 camera_i2c ]
  set mipi_i2c [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 mipi_i2c ]

  # Create ports
  set MIPI_PIXEL_CLK [ create_bd_port -dir I -type clk MIPI_PIXEL_CLK ]
  set MIPI_PIXEL_D [ create_bd_port -dir I -from 9 -to 0 -type data MIPI_PIXEL_D ]
  set MIPI_PIXEL_HS [ create_bd_port -dir I MIPI_PIXEL_HS ]
  set MIPI_PIXEL_VS [ create_bd_port -dir I MIPI_PIXEL_VS ]
  set camera_pwdn_n [ create_bd_port -dir O -from 0 -to 0 camera_pwdn_n ]
  set mipi_cs_n [ create_bd_port -dir O -from 0 -to 0 mipi_cs_n ]
  set mipi_refclk [ create_bd_port -dir O mipi_refclk ]
  set mipi_reset_n [ create_bd_port -dir O -from 0 -to 0 mipi_reset_n ]

  # Create instance: D8M_RETRIGGER_0, and set properties
  set D8M_RETRIGGER_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:D8M_RETRIGGER:1.0 D8M_RETRIGGER_0 ]

  # Create instance: MIPI_ILA, and set properties
  set MIPI_ILA [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 MIPI_ILA ]
  set_property -dict [ list \
CONFIG.C_DATA_DEPTH {8192} \
CONFIG.C_ENABLE_ILA_AXI_MON {false} \
CONFIG.C_MONITOR_TYPE {Native} \
CONFIG.C_NUM_OF_PROBES {9} \
CONFIG.C_PROBE0_WIDTH {12} \
 ] $MIPI_ILA

  # Create instance: camera_i2c, and set properties
  set camera_i2c [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 camera_i2c ]

  # Create instance: camera_pwdn, and set properties
  set camera_pwdn [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 camera_pwdn ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {0} \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_DOUT_DEFAULT {0x00000001} \
CONFIG.C_GPIO_WIDTH {1} \
CONFIG.GPIO_BOARD_INTERFACE {Custom} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $camera_pwdn

  # Create instance: clk_wiz_1, and set properties
  set clk_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz_1 ]
  set_property -dict [ list \
CONFIG.CLKIN1_JITTER_PS {200.0} \
CONFIG.CLKOUT1_JITTER {249.363} \
CONFIG.CLKOUT1_PHASE_ERROR {164.985} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {20.00} \
CONFIG.CLK_IN1_BOARD_INTERFACE {Custom} \
CONFIG.MMCM_CLKFBOUT_MULT_F {20.000} \
CONFIG.MMCM_CLKIN1_PERIOD {20.000} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {50.000} \
CONFIG.MMCM_DIVCLK_DIVIDE {1} \
CONFIG.PRIM_IN_FREQ {50.000} \
CONFIG.USE_BOARD_FLOW {true} \
CONFIG.USE_LOCKED {false} \
CONFIG.USE_RESET {false} \
 ] $clk_wiz_1

  # Create instance: mipi_cs, and set properties
  set mipi_cs [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 mipi_cs ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {0} \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_GPIO_WIDTH {1} \
CONFIG.GPIO_BOARD_INTERFACE {Custom} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $mipi_cs

  # Create instance: mipi_i2c, and set properties
  set mipi_i2c [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 mipi_i2c ]

  # Create instance: mipi_reset, and set properties
  set mipi_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 mipi_reset ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {0} \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_DOUT_DEFAULT {0x00000001} \
CONFIG.C_GPIO_WIDTH {1} \
CONFIG.GPIO_BOARD_INTERFACE {Custom} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $mipi_reset

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_EN_CLK1_PORT {1} \
CONFIG.PCW_EN_CLK2_PORT {1} \
CONFIG.PCW_EN_CLK3_PORT {0} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_USB0_PERIPHERAL_ENABLE {0} \
CONFIG.preset {ZedBoard} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {5} \
 ] $ps7_0_axi_periph

  # Create instance: rst_ps7_0_50M, and set properties
  set rst_ps7_0_50M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_50M ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_iic_0_IIC [get_bd_intf_ports mipi_i2c] [get_bd_intf_pins mipi_i2c/IIC]
  connect_bd_intf_net -intf_net axi_iic_0_IIC1 [get_bd_intf_ports camera_i2c] [get_bd_intf_pins camera_i2c/IIC]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins mipi_i2c/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M01_AXI [get_bd_intf_pins camera_i2c/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M02_AXI [get_bd_intf_pins mipi_cs/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M03_AXI [get_bd_intf_pins camera_pwdn/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M04_AXI [get_bd_intf_pins mipi_reset/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M04_AXI]

  # Create port connections
  connect_bd_net -net D8M_RETRIGGER_0_D5M_Data_o [get_bd_pins D8M_RETRIGGER_0/D5M_Data_o] [get_bd_pins MIPI_ILA/probe0]
  connect_bd_net -net D8M_RETRIGGER_0_HS_o [get_bd_pins D8M_RETRIGGER_0/HS_o] [get_bd_pins MIPI_ILA/probe1]
  connect_bd_net -net D8M_RETRIGGER_0_VS_o [get_bd_pins D8M_RETRIGGER_0/VS_o] [get_bd_pins MIPI_ILA/probe2]
  connect_bd_net -net MIPI_PIXEL_CLK_1 [get_bd_ports MIPI_PIXEL_CLK] [get_bd_pins D8M_RETRIGGER_0/D5M_Pixel_CLK] [get_bd_pins MIPI_ILA/probe6]
  connect_bd_net -net MIPI_PIXEL_D_1 [get_bd_ports MIPI_PIXEL_D] [get_bd_pins D8M_RETRIGGER_0/D5M_Data_i]
  connect_bd_net -net MIPI_PIXEL_HS_1 [get_bd_ports MIPI_PIXEL_HS] [get_bd_pins D8M_RETRIGGER_0/HS_i] [get_bd_pins MIPI_ILA/probe7]
  connect_bd_net -net MIPI_PIXEL_VS_1 [get_bd_ports MIPI_PIXEL_VS] [get_bd_pins D8M_RETRIGGER_0/VS_i] [get_bd_pins MIPI_ILA/probe8]
  connect_bd_net -net camera_pwdn_gpio_io_o [get_bd_ports camera_pwdn_n] [get_bd_pins camera_pwdn/gpio_io_o]
  connect_bd_net -net clk_wiz_1_clk_out1 [get_bd_ports mipi_refclk] [get_bd_pins clk_wiz_1/clk_out1]
  connect_bd_net -net mipi_cs_gpio_io_o [get_bd_ports mipi_cs_n] [get_bd_pins MIPI_ILA/probe3] [get_bd_pins MIPI_ILA/probe4] [get_bd_pins mipi_cs/gpio_io_o]
  connect_bd_net -net mipi_reset_gpio_io_o [get_bd_ports mipi_reset_n] [get_bd_pins MIPI_ILA/probe5] [get_bd_pins mipi_reset/gpio_io_o]
  connect_bd_net -net processing_system7_0_FCLK_CLK2 [get_bd_pins MIPI_ILA/clk] [get_bd_pins processing_system7_0/FCLK_CLK2]
  connect_bd_net -net processing_system7_0_FCLK_CLK3 [get_bd_pins camera_i2c/s_axi_aclk] [get_bd_pins camera_pwdn/s_axi_aclk] [get_bd_pins mipi_cs/s_axi_aclk] [get_bd_pins mipi_i2c/s_axi_aclk] [get_bd_pins mipi_reset/s_axi_aclk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/M01_ACLK] [get_bd_pins ps7_0_axi_periph/M02_ACLK] [get_bd_pins ps7_0_axi_periph/M03_ACLK] [get_bd_pins ps7_0_axi_periph/M04_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK] [get_bd_pins rst_ps7_0_50M/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_CLK4 [get_bd_pins clk_wiz_1/clk_in1] [get_bd_pins processing_system7_0/FCLK_CLK1]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_ps7_0_50M/ext_reset_in]
  connect_bd_net -net rst_ps7_0_50M_interconnect_aresetn [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins rst_ps7_0_50M/interconnect_aresetn]
  connect_bd_net -net rst_ps7_0_50M_peripheral_aresetn [get_bd_pins camera_i2c/s_axi_aresetn] [get_bd_pins camera_pwdn/s_axi_aresetn] [get_bd_pins mipi_cs/s_axi_aresetn] [get_bd_pins mipi_i2c/s_axi_aresetn] [get_bd_pins mipi_reset/s_axi_aresetn] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/M01_ARESETN] [get_bd_pins ps7_0_axi_periph/M02_ARESETN] [get_bd_pins ps7_0_axi_periph/M03_ARESETN] [get_bd_pins ps7_0_axi_periph/M04_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_ps7_0_50M/peripheral_aresetn]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x41600000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs mipi_i2c/S_AXI/Reg] SEG_axi_iic_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41610000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs camera_i2c/S_AXI/Reg] SEG_axi_iic_0_Reg1
  create_bd_addr_seg -range 0x00010000 -offset 0x41220000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs mipi_reset/S_AXI/Reg] SEG_camera_pwdn1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41210000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs camera_pwdn/S_AXI/Reg] SEG_camera_pwdn_n_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs mipi_cs/S_AXI/Reg] SEG_gpio_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


