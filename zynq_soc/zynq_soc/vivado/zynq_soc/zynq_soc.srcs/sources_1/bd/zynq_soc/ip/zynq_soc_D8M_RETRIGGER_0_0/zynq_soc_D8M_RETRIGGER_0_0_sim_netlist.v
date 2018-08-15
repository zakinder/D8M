// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Aug 15 00:10:28 2018
// Host        : CHOICE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/sakin/OneDrive/CLOUD/EDIT_NOTES/system/GIT/D8M/zynq_soc/zynq_soc/vivado/zynq_soc/zynq_soc.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_D8M_RETRIGGER_0_0/zynq_soc_D8M_RETRIGGER_0_0_sim_netlist.v
// Design      : zynq_soc_D8M_RETRIGGER_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zynq_soc_D8M_RETRIGGER_0_0,D8M_RETRIGGER,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "D8M_RETRIGGER,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module zynq_soc_D8M_RETRIGGER_0_0
   (D5M_Pixel_CLK,
    D5M_Data_i,
    HS_i,
    VS_i,
    D5M_Data_o,
    HS_o,
    VS_o);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 D5M_Pixel_CLK CLK" *) input D5M_Pixel_CLK;
  input [9:0]D5M_Data_i;
  input HS_i;
  input VS_i;
  output [11:0]D5M_Data_o;
  output HS_o;
  output VS_o;

  wire \<const0> ;
  wire [9:0]D5M_Data_i;
  wire [9:0]\^D5M_Data_o ;
  wire D5M_Pixel_CLK;
  wire HS_i;
  wire HS_o;
  wire VS_i;
  wire VS_o;

  assign D5M_Data_o[11] = \<const0> ;
  assign D5M_Data_o[10] = \<const0> ;
  assign D5M_Data_o[9:0] = \^D5M_Data_o [9:0];
  GND GND
       (.G(\<const0> ));
  zynq_soc_D8M_RETRIGGER_0_0_D8M_RETRIGGER U0
       (.D5M_Data_i(D5M_Data_i),
        .D5M_Data_o(\^D5M_Data_o ),
        .D5M_Pixel_CLK(D5M_Pixel_CLK),
        .HS_i(HS_i),
        .HS_o(HS_o),
        .VS_i(VS_i),
        .VS_o(VS_o));
endmodule

(* ORIG_REF_NAME = "D8M_RETRIGGER" *) 
module zynq_soc_D8M_RETRIGGER_0_0_D8M_RETRIGGER
   (D5M_Data_o,
    HS_o,
    VS_o,
    D5M_Data_i,
    D5M_Pixel_CLK,
    HS_i,
    VS_i);
  output [9:0]D5M_Data_o;
  output HS_o;
  output VS_o;
  input [9:0]D5M_Data_i;
  input D5M_Pixel_CLK;
  input HS_i;
  input VS_i;

  wire [9:0]D5M_Data_i;
  wire [9:0]D5M_Data_o;
  wire D5M_Pixel_CLK;
  wire HS_i;
  wire HS_o;
  wire VS_i;
  wire VS_o;

  FDRE \D5M_Data_o_reg[0] 
       (.C(D5M_Pixel_CLK),
        .CE(1'b1),
        .D(D5M_Data_i[0]),
        .Q(D5M_Data_o[0]),
        .R(1'b0));
  FDRE \D5M_Data_o_reg[1] 
       (.C(D5M_Pixel_CLK),
        .CE(1'b1),
        .D(D5M_Data_i[1]),
        .Q(D5M_Data_o[1]),
        .R(1'b0));
  FDRE \D5M_Data_o_reg[2] 
       (.C(D5M_Pixel_CLK),
        .CE(1'b1),
        .D(D5M_Data_i[2]),
        .Q(D5M_Data_o[2]),
        .R(1'b0));
  FDRE \D5M_Data_o_reg[3] 
       (.C(D5M_Pixel_CLK),
        .CE(1'b1),
        .D(D5M_Data_i[3]),
        .Q(D5M_Data_o[3]),
        .R(1'b0));
  FDRE \D5M_Data_o_reg[4] 
       (.C(D5M_Pixel_CLK),
        .CE(1'b1),
        .D(D5M_Data_i[4]),
        .Q(D5M_Data_o[4]),
        .R(1'b0));
  FDRE \D5M_Data_o_reg[5] 
       (.C(D5M_Pixel_CLK),
        .CE(1'b1),
        .D(D5M_Data_i[5]),
        .Q(D5M_Data_o[5]),
        .R(1'b0));
  FDRE \D5M_Data_o_reg[6] 
       (.C(D5M_Pixel_CLK),
        .CE(1'b1),
        .D(D5M_Data_i[6]),
        .Q(D5M_Data_o[6]),
        .R(1'b0));
  FDRE \D5M_Data_o_reg[7] 
       (.C(D5M_Pixel_CLK),
        .CE(1'b1),
        .D(D5M_Data_i[7]),
        .Q(D5M_Data_o[7]),
        .R(1'b0));
  FDRE \D5M_Data_o_reg[8] 
       (.C(D5M_Pixel_CLK),
        .CE(1'b1),
        .D(D5M_Data_i[8]),
        .Q(D5M_Data_o[8]),
        .R(1'b0));
  FDRE \D5M_Data_o_reg[9] 
       (.C(D5M_Pixel_CLK),
        .CE(1'b1),
        .D(D5M_Data_i[9]),
        .Q(D5M_Data_o[9]),
        .R(1'b0));
  FDRE HS_o_reg
       (.C(D5M_Pixel_CLK),
        .CE(1'b1),
        .D(HS_i),
        .Q(HS_o),
        .R(1'b0));
  FDRE VS_o_reg
       (.C(D5M_Pixel_CLK),
        .CE(1'b1),
        .D(VS_i),
        .Q(VS_o),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
