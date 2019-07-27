G28 ;Home
M117 Purging extruder...
G1 Z15.0 F6000 ;Move the platform down 15mm
;Prime the extruder
G92 E0
G1 X0.1 Y20 Z0.3 F5000.0 ; move to start-line position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; draw first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; move to draw the second line
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; draw second line
G92 E0
G1 Z1.0 F3000
G1 F200 E3
M117 Now printing...
