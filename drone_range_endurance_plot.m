function drone_range_endurance_plot(length, width, height, wheelbase, weight)
  % Create an empty matrix to store the battery capacities
  battery_capacities = [];
  % Create an empty matrix to store the battery voltages
  battery_voltages = [];
  % Create an empty matrix to store the ranges
  ranges = [];
  % Create an empty matrix to store the endurances
  endurances = [];
  % Loop through different battery capacities from 1000 to 10000 mAh with a step of 1000 mAh
  for battery_capacity = 10000:5000:100000
    % Loop through different battery voltages from 7.4 to 22.2 V with a step of 3.7 V
    for battery_voltage = 11.1:3.7:22.2
      % Append the battery capacity and voltage to the corresponding matrices
      battery_capacities = [battery_capacities; battery_capacity];
      battery_voltages = [battery_voltages; battery_voltage];
      % Call the drone_range_endurance function to get the range and endurance for the given parameters
      [range, endurance] = drone_range_endurance(length, width, height, wheelbase, weight, battery_capacity, battery_voltage);
      % Append the range and endurance to the corresponding matrices
      ranges = [ranges; range];
      endurances = [endurances; endurance];
    end
  end
  
  % Create a figure with two subplots
  figure;
  subplot(1,2,1);
  % Plot the range as a function of battery capacity and voltage on the first subplot
  scatter3(battery_capacities, battery_voltages, ranges);
  % Add a colorbar to show the range
  colorbar;
  colormap jet;
  caxis([0 max(ranges)]);
  % Set the x-axis label
  xlabel('Battery Capacity (mAh)');
  % Set the y-axis label
  ylabel('Battery Voltage (V)');
  % Set the z-axis label
  zlabel('Range (km)');
  
  subplot(1,2,2);
  % Plot the endurance as a function of battery capacity and voltage on the second subplot
  scatter3(battery_capacities, battery_voltages, endurances);
  % Add a colorbar to show the endurance
  colorbar;
  colormap jet;
  caxis([0 max(endurances)]);
  % Set the x-axis label
  xlabel('Battery Capacity (mAh)');
  % Set the y-axis label
  ylabel('Battery Voltage (V)');
  % Set the z-axis label
  zlabel('Endurance (h)');
  
end