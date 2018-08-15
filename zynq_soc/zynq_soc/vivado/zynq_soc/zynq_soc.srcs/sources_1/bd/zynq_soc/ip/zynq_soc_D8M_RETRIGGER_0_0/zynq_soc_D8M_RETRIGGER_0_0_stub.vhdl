-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Wed Aug 15 00:10:28 2018
-- Host        : CHOICE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/sakin/OneDrive/CLOUD/EDIT_NOTES/system/GIT/D8M/zynq_soc/zynq_soc/vivado/zynq_soc/zynq_soc.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_D8M_RETRIGGER_0_0/zynq_soc_D8M_RETRIGGER_0_0_stub.vhdl
-- Design      : zynq_soc_D8M_RETRIGGER_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zynq_soc_D8M_RETRIGGER_0_0 is
  Port ( 
    D5M_Pixel_CLK : in STD_LOGIC;
    D5M_Data_i : in STD_LOGIC_VECTOR ( 9 downto 0 );
    HS_i : in STD_LOGIC;
    VS_i : in STD_LOGIC;
    D5M_Data_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    HS_o : out STD_LOGIC;
    VS_o : out STD_LOGIC
  );

end zynq_soc_D8M_RETRIGGER_0_0;

architecture stub of zynq_soc_D8M_RETRIGGER_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "D5M_Pixel_CLK,D5M_Data_i[9:0],HS_i,VS_i,D5M_Data_o[11:0],HS_o,VS_o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "D8M_RETRIGGER,Vivado 2017.2";
begin
end;
