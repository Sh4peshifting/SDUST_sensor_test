temperature = [27, 40, 45, 50, 55, 60, 65, 70, 75, 80];
voltage_o = [-0.046, -0.070, -0.078, -0.086, -0.094, -0.101, -0.109, -0.116, -0.123, -0.130];
resistane_t = ((100/5100-voltage_o./20).*5000)./(1-(100/5100-voltage_o./20));
plot_curve(3, temperature, resistane_t, 'Temperature (C)', 'Resistance (Ohm)', 'Resistance-Temperature Curve', '%.3f');

temperature_L = [30, 46, 51, 57, 62, 67, 72, 77, 82, 86];
temperature_H = [31, 47, 52, 58, 63, 68, 73, 78, 83, 87];
resistane_L = [111.85, 118.13, 120.09, 122.43, 124.38, 126.33, 128.27, 130.21, 132.15, 133.70];
resistane_H = [112.25, 118.52, 120.48, 122.82, 124.77, 126.72, 128.66, 130.60, 132.54, 134.08];
temperature_M = temperature_L + (temperature_H - temperature_L) .* (resistane_t - resistane_L) ./ (resistane_H - resistane_L); 

error = (temperature_M - temperature)./temperature * 100;