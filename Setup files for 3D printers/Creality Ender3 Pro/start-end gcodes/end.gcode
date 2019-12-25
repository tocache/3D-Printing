G1 F1800 E-3; retract
G1 F3000 Z10; lift nozzle off the print 10mm
G90; change to absolute
G1 X0 Y220 F1000 ; prepare for part removal
M106 S0 ; turn off cooling fan
M104 S0 ; turn off extruder
M140 S0 ; turn off bed
M84 ; disable motors
M117 Printing done!
