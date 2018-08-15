
# ----------------------------------------------------------------------------
# FMC Expansion Connector - Bank 34
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN J20 [get_ports mipi_refclk]
# ----------------------------------------------------------------------------
# FMC Expansion Connector - Bank 35
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN F19 [get_ports {mipi_cs_n[0]}]
set_property PACKAGE_PIN G21 [get_ports mipi_i2c_sda_io]
set_property PACKAGE_PIN G20 [get_ports mipi_i2c_scl_io]
set_property PACKAGE_PIN G19 [get_ports {mipi_reset_n[0]}]
set_property PACKAGE_PIN B16 [get_ports MIPI_PIXEL_CLK]
set_property PACKAGE_PIN P22 [get_ports {MIPI_PIXEL_D[7]}]
set_property PACKAGE_PIN N22 [get_ports {MIPI_PIXEL_D[8]}]
set_property PACKAGE_PIN L22 [get_ports {MIPI_PIXEL_D[6]}]
set_property PACKAGE_PIN L21 [get_ports {MIPI_PIXEL_D[9]}]
set_property PACKAGE_PIN J22 [get_ports {MIPI_PIXEL_D[5]}]
set_property PACKAGE_PIN J21 [get_ports {MIPI_PIXEL_D[4]}]
set_property PACKAGE_PIN T19 [get_ports {MIPI_PIXEL_D[2]}]
set_property PACKAGE_PIN R19 [get_ports {MIPI_PIXEL_D[1]}]
set_property PACKAGE_PIN P21 [get_ports {MIPI_PIXEL_D[0]}]
set_property PACKAGE_PIN P20 [get_ports {MIPI_PIXEL_D[3]}]
set_property PACKAGE_PIN K20 [get_ports MIPI_PIXEL_HS]
set_property PACKAGE_PIN K19 [get_ports MIPI_PIXEL_VS]
#camera
set_property PACKAGE_PIN C22 [get_ports camera_i2c_sda_io]
set_property PACKAGE_PIN D22 [get_ports camera_i2c_scl_io]
set_property PACKAGE_PIN D21 [get_ports {camera_pwdn_n[0]}]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets MIPI_PIXEL_CLK_IBUF]

set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 34]];
set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 35]];



