temperature = [27, 40, 45, 50, 55, 60, 65, 70, 75, 80];
voltage_o = [-0.046, -0.070, -0.078, -0.086, -0.094, -0.101, -0.109, -0.116, -0.123, -0.130];
resistane_t = ((100/5100-voltage_o./20).*5000)./(1-(100/5100-voltage_o./20));
plot_curve(3, temperature, resistane_t, 'Temperature (C)', 'Resistance (Ohm)', 'Resistance-Temperature Curve', '%.3f');