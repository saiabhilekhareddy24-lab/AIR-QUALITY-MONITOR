🌱 Air Quality Monitor

A Verilog HDL-based digital system that monitors an air-quality sensor value and classifies the air quality into GOOD, MODERATE, or POOR levels.

When poor air quality is detected, the system activates an alert signal.

Features
Verilog HDL implementation
8-bit air-quality sensor input
Three air-quality levels
Automatic pollution-level classification
Alert output for poor air quality
Verilog testbench
Simulation waveform generation
HTML simulation report
Air Quality Classification
Sensor Value	Air Quality	Alert
0–50	GOOD	OFF
51–100	MODERATE	OFF
101–255	POOR	ON
Input

air_quality [7:0]

An 8-bit digital value representing the air-quality sensor reading.

Outputs

air_status [1:0]

Value	Status
00	GOOD
01	MODERATE
10	POOR

alert

0 → Air quality is acceptable
1 → Poor air quality detected
Simulation

The testbench checks different sensor values including:

30 → GOOD
50 → GOOD
75 → MODERATE
100 → MODERATE
120 → POOR
180 → POOR

All test cases are expected to produce the correct status and alert output.

Running the Simulation

Using Icarus Verilog:

iverilog -o air_quality_sim src/air_quality_monitor.v testbench/tb_air_quality_monitor.v
vvp air_quality_sim


To generate and view the waveform:

gtkwave waveform.vcd

Simulation Output

The simulation output is available in:

simulation/simulation_output.html


Open the HTML file in a web browser to view the simulation results.

Applications
Indoor air-quality monitoring
Smart homes
IoT environmental monitoring
Industrial pollution monitoring
Smart ventilation systems
Future Improvements
Add temperature and humidity monitoring
Interface with an actual MQ-series air-quality sensor
Add LCD/OLED display
Add buzzer and LED indicators
Implement FPGA hardware testing
Add IoT/cloud monitoring
Author

Air Quality Monitor Project

Developed using Verilog HDL for digital design and simulation.
