-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Wed Aug 15 00:10:28 2018
-- Host        : CHOICE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/sakin/OneDrive/CLOUD/EDIT_NOTES/system/GIT/D8M/zynq_soc/zynq_soc/vivado/zynq_soc/zynq_soc.srcs/sources_1/bd/zynq_soc/ip/zynq_soc_D8M_RETRIGGER_0_0/zynq_soc_D8M_RETRIGGER_0_0_sim_netlist.vhdl
-- Design      : zynq_soc_D8M_RETRIGGER_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zynq_soc_D8M_RETRIGGER_0_0_D8M_RETRIGGER is
  port (
    D5M_Data_o : out STD_LOGIC_VECTOR ( 9 downto 0 );
    HS_o : out STD_LOGIC;
    VS_o : out STD_LOGIC;
    D5M_Data_i : in STD_LOGIC_VECTOR ( 9 downto 0 );
    D5M_Pixel_CLK : in STD_LOGIC;
    HS_i : in STD_LOGIC;
    VS_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zynq_soc_D8M_RETRIGGER_0_0_D8M_RETRIGGER : entity is "D8M_RETRIGGER";
end zynq_soc_D8M_RETRIGGER_0_0_D8M_RETRIGGER;

architecture STRUCTURE of zynq_soc_D8M_RETRIGGER_0_0_D8M_RETRIGGER is
begin
\D5M_Data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => D5M_Pixel_CLK,
      CE => '1',
      D => D5M_Data_i(0),
      Q => D5M_Data_o(0),
      R => '0'
    );
\D5M_Data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => D5M_Pixel_CLK,
      CE => '1',
      D => D5M_Data_i(1),
      Q => D5M_Data_o(1),
      R => '0'
    );
\D5M_Data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => D5M_Pixel_CLK,
      CE => '1',
      D => D5M_Data_i(2),
      Q => D5M_Data_o(2),
      R => '0'
    );
\D5M_Data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => D5M_Pixel_CLK,
      CE => '1',
      D => D5M_Data_i(3),
      Q => D5M_Data_o(3),
      R => '0'
    );
\D5M_Data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => D5M_Pixel_CLK,
      CE => '1',
      D => D5M_Data_i(4),
      Q => D5M_Data_o(4),
      R => '0'
    );
\D5M_Data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => D5M_Pixel_CLK,
      CE => '1',
      D => D5M_Data_i(5),
      Q => D5M_Data_o(5),
      R => '0'
    );
\D5M_Data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => D5M_Pixel_CLK,
      CE => '1',
      D => D5M_Data_i(6),
      Q => D5M_Data_o(6),
      R => '0'
    );
\D5M_Data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => D5M_Pixel_CLK,
      CE => '1',
      D => D5M_Data_i(7),
      Q => D5M_Data_o(7),
      R => '0'
    );
\D5M_Data_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => D5M_Pixel_CLK,
      CE => '1',
      D => D5M_Data_i(8),
      Q => D5M_Data_o(8),
      R => '0'
    );
\D5M_Data_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => D5M_Pixel_CLK,
      CE => '1',
      D => D5M_Data_i(9),
      Q => D5M_Data_o(9),
      R => '0'
    );
HS_o_reg: unisim.vcomponents.FDRE
     port map (
      C => D5M_Pixel_CLK,
      CE => '1',
      D => HS_i,
      Q => HS_o,
      R => '0'
    );
VS_o_reg: unisim.vcomponents.FDRE
     port map (
      C => D5M_Pixel_CLK,
      CE => '1',
      D => VS_i,
      Q => VS_o,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zynq_soc_D8M_RETRIGGER_0_0 is
  port (
    D5M_Pixel_CLK : in STD_LOGIC;
    D5M_Data_i : in STD_LOGIC_VECTOR ( 9 downto 0 );
    HS_i : in STD_LOGIC;
    VS_i : in STD_LOGIC;
    D5M_Data_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    HS_o : out STD_LOGIC;
    VS_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zynq_soc_D8M_RETRIGGER_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zynq_soc_D8M_RETRIGGER_0_0 : entity is "zynq_soc_D8M_RETRIGGER_0_0,D8M_RETRIGGER,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zynq_soc_D8M_RETRIGGER_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of zynq_soc_D8M_RETRIGGER_0_0 : entity is "D8M_RETRIGGER,Vivado 2017.2";
end zynq_soc_D8M_RETRIGGER_0_0;

architecture STRUCTURE of zynq_soc_D8M_RETRIGGER_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^d5m_data_o\ : STD_LOGIC_VECTOR ( 9 downto 0 );
begin
  D5M_Data_o(11) <= \<const0>\;
  D5M_Data_o(10) <= \<const0>\;
  D5M_Data_o(9 downto 0) <= \^d5m_data_o\(9 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.zynq_soc_D8M_RETRIGGER_0_0_D8M_RETRIGGER
     port map (
      D5M_Data_i(9 downto 0) => D5M_Data_i(9 downto 0),
      D5M_Data_o(9 downto 0) => \^d5m_data_o\(9 downto 0),
      D5M_Pixel_CLK => D5M_Pixel_CLK,
      HS_i => HS_i,
      HS_o => HS_o,
      VS_i => VS_i,
      VS_o => VS_o
    );
end STRUCTURE;
