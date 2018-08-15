--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
--Date        : Wed Aug 15 00:08:28 2018
--Host        : CHOICE running 64-bit major release  (build 9200)
--Command     : generate_target zynq_soc_wrapper.bd
--Design      : zynq_soc_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zynq_soc_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    MIPI_PIXEL_CLK : in STD_LOGIC;
    MIPI_PIXEL_D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    MIPI_PIXEL_HS : in STD_LOGIC;
    MIPI_PIXEL_VS : in STD_LOGIC;
    camera_i2c_scl_io : inout STD_LOGIC;
    camera_i2c_sda_io : inout STD_LOGIC;
    camera_pwdn_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    mipi_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    mipi_i2c_scl_io : inout STD_LOGIC;
    mipi_i2c_sda_io : inout STD_LOGIC;
    mipi_refclk : out STD_LOGIC;
    mipi_reset_n : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end zynq_soc_wrapper;

architecture STRUCTURE of zynq_soc_wrapper is
  component zynq_soc is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    camera_i2c_scl_i : in STD_LOGIC;
    camera_i2c_scl_o : out STD_LOGIC;
    camera_i2c_scl_t : out STD_LOGIC;
    camera_i2c_sda_i : in STD_LOGIC;
    camera_i2c_sda_o : out STD_LOGIC;
    camera_i2c_sda_t : out STD_LOGIC;
    mipi_i2c_scl_i : in STD_LOGIC;
    mipi_i2c_scl_o : out STD_LOGIC;
    mipi_i2c_scl_t : out STD_LOGIC;
    mipi_i2c_sda_i : in STD_LOGIC;
    mipi_i2c_sda_o : out STD_LOGIC;
    mipi_i2c_sda_t : out STD_LOGIC;
    MIPI_PIXEL_CLK : in STD_LOGIC;
    MIPI_PIXEL_D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    MIPI_PIXEL_HS : in STD_LOGIC;
    MIPI_PIXEL_VS : in STD_LOGIC;
    camera_pwdn_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    mipi_refclk : out STD_LOGIC;
    mipi_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    mipi_reset_n : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component zynq_soc;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal camera_i2c_scl_i : STD_LOGIC;
  signal camera_i2c_scl_o : STD_LOGIC;
  signal camera_i2c_scl_t : STD_LOGIC;
  signal camera_i2c_sda_i : STD_LOGIC;
  signal camera_i2c_sda_o : STD_LOGIC;
  signal camera_i2c_sda_t : STD_LOGIC;
  signal mipi_i2c_scl_i : STD_LOGIC;
  signal mipi_i2c_scl_o : STD_LOGIC;
  signal mipi_i2c_scl_t : STD_LOGIC;
  signal mipi_i2c_sda_i : STD_LOGIC;
  signal mipi_i2c_sda_o : STD_LOGIC;
  signal mipi_i2c_sda_t : STD_LOGIC;
begin
camera_i2c_scl_iobuf: component IOBUF
     port map (
      I => camera_i2c_scl_o,
      IO => camera_i2c_scl_io,
      O => camera_i2c_scl_i,
      T => camera_i2c_scl_t
    );
camera_i2c_sda_iobuf: component IOBUF
     port map (
      I => camera_i2c_sda_o,
      IO => camera_i2c_sda_io,
      O => camera_i2c_sda_i,
      T => camera_i2c_sda_t
    );
mipi_i2c_scl_iobuf: component IOBUF
     port map (
      I => mipi_i2c_scl_o,
      IO => mipi_i2c_scl_io,
      O => mipi_i2c_scl_i,
      T => mipi_i2c_scl_t
    );
mipi_i2c_sda_iobuf: component IOBUF
     port map (
      I => mipi_i2c_sda_o,
      IO => mipi_i2c_sda_io,
      O => mipi_i2c_sda_i,
      T => mipi_i2c_sda_t
    );
zynq_soc_i: component zynq_soc
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      MIPI_PIXEL_CLK => MIPI_PIXEL_CLK,
      MIPI_PIXEL_D(9 downto 0) => MIPI_PIXEL_D(9 downto 0),
      MIPI_PIXEL_HS => MIPI_PIXEL_HS,
      MIPI_PIXEL_VS => MIPI_PIXEL_VS,
      camera_i2c_scl_i => camera_i2c_scl_i,
      camera_i2c_scl_o => camera_i2c_scl_o,
      camera_i2c_scl_t => camera_i2c_scl_t,
      camera_i2c_sda_i => camera_i2c_sda_i,
      camera_i2c_sda_o => camera_i2c_sda_o,
      camera_i2c_sda_t => camera_i2c_sda_t,
      camera_pwdn_n(0) => camera_pwdn_n(0),
      mipi_cs_n(0) => mipi_cs_n(0),
      mipi_i2c_scl_i => mipi_i2c_scl_i,
      mipi_i2c_scl_o => mipi_i2c_scl_o,
      mipi_i2c_scl_t => mipi_i2c_scl_t,
      mipi_i2c_sda_i => mipi_i2c_sda_i,
      mipi_i2c_sda_o => mipi_i2c_sda_o,
      mipi_i2c_sda_t => mipi_i2c_sda_t,
      mipi_refclk => mipi_refclk,
      mipi_reset_n(0) => mipi_reset_n(0)
    );
end STRUCTURE;
