% 电容式传感器位移
delta_x = [0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0, 5.5, 6.0];
voltage = [-428, -348, -272, -199, -128, -63, 0, 57, 118, 175, 231, 285, 338];
plot_curve(1, delta_x, voltage, 'Delta X', 'Voltage', 'Voltage-Delta X Curve', '%.0f');

delta_x_linear = delta_x(5:11);
voltage_linear = voltage(5:11);
calculate_sensitivity_nonlinearity(delta_x_linear, voltage_linear, 'Delta X', 'Voltage');