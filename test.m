clear
length = 2; % meters
width = 1.2; % meters
height = 2; % meters
wheelbase = 2.3; % meters
weight = 120; % kilograms
battery_capacity = 100000; % milliampere-hours
battery_voltage = 14.8; % volts

[A,B]=drone_range_endurance(length, width, height, wheelbase, weight, battery_capacity, battery_voltage)
drone_range_endurance_plot(length, width, height, wheelbase, weight)

