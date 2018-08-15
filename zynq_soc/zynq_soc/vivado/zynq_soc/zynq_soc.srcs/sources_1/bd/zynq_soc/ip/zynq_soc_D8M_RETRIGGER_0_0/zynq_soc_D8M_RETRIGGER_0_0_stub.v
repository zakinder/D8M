// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Aug 15 00:10:28 2018
// Host        : CHOICE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/sakin/OneDrive/CLOUD/EDIT_NOTES/system/GIT/D8M/zynq_soc/zynq_soc/vivado/zynq_soc/zynq_soc.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_D8M_RETRIGGER_0_0/zynq_soc_D8M_RETRIGGER_0_0_stub.v
// Design      : zynq_soc_D8M_RETRIGGER_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "D8M_RETRIGGER,Vivado 2017.2" *)
module zynq_soc_D8M_RETRIGGER_0_0(D5M_Pixel_CLK, D5M_Data_i, HS_i, VS_i, 
  D5M_Data_o, HS_o, VS_o)
/* synthesis syn_black_box black_box_pad_pin="D5M_Pixel_CLK,D5M_Data_i[9:0],HS_i,VS_i,D5M_Data_o[11:0],HS_o,VS_o" */;
  input D5M_Pixel_CLK;
  input [9:0]D5M_Data_i;
  input HS_i;
  input VS_i;
  output [11:0]D5M_Data_o;
  output HS_o;
  output VS_o;
endmodule
