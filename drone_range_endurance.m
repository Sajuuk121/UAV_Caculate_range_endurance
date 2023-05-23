% Define a function to estimate the range and endurance of a drone
function [range, endurance] = drone_range_endurance(length, width, height, wheelbase, weight, battery_capacity, battery_voltage)
  % Calculate the frontal area of the drone
  frontal_area = length * height;
  % Calculate the drag coefficient of the drone (assume a rectangular shape)
  drag_coefficient = 1.28;
  % Calculate the air density (assume sea level and standard temperature)
  air_density = 1.225;
  % Calculate the drag force of the drone (assume a constant speed of 10 m/s)
  drag_force = 0.5 * drag_coefficient * air_density * frontal_area * (10 ^ 2);
  % Calculate the power required to overcome the drag force
  power_drag = drag_force * 10;
  % Calculate the power required to lift the drone (assume a lift-to-drag ratio of 4)
  power_lift = power_drag / 4;
  % Calculate the total power required for level flight
  power_total = power_drag + power_lift;
  % Calculate the battery energy in watt-hours
  battery_energy = battery_capacity * battery_voltage ./ (1000.*0.5);
  % Calculate the endurance of the drone in hours
  endurance = battery_energy / power_total;
  % Calculate the range of the drone in kilometers (assume a constant speed of 10 m/s)
  range = endurance * 10 * 3.6;
end