# Clock signal
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports mclk]

# Inputs (a and b mapped to slide switches)
set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS33} [get_ports {a[0]}]
set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports {a[1]}]
set_property -dict {PACKAGE_PIN U1 IOSTANDARD LVCMOS33} [get_ports {a[2]}]
set_property -dict {PACKAGE_PIN T2 IOSTANDARD LVCMOS33} [get_ports {a[3]}]

set_property -dict {PACKAGE_PIN T1 IOSTANDARD LVCMOS33} [get_ports {b[0]}]
set_property -dict {PACKAGE_PIN R2 IOSTANDARD LVCMOS33} [get_ports {b[1]}]
set_property -dict {PACKAGE_PIN R1 IOSTANDARD LVCMOS33} [get_ports {b[2]}]
set_property -dict {PACKAGE_PIN P2 IOSTANDARD LVCMOS33} [get_ports {b[3]}]

# Opcode mapped to switches
set_property -dict {PACKAGE_PIN N2 IOSTANDARD LVCMOS33} [get_ports {opcod[0]}]
set_property -dict {PACKAGE_PIN N1 IOSTANDARD LVCMOS33} [get_ports {opcod[1]}]
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS33} [get_ports {opcod[2]}]

# Output LEDs to represent the result
set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS33} [get_ports {result[4]}]
set_property -dict {PACKAGE_PIN F2 IOSTANDARD LVCMOS33} [get_ports {result[1]}]
set_property -dict {PACKAGE_PIN F1 IOSTANDARD LVCMOS33} [get_ports {result[2]}]
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports {result[3]}]
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS33} [get_ports {result[0]}]