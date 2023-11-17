% 霍尔传感器、磁电式传感器测转速
voltage = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
n = [410, 640, 880, 1120, 1350, 1580, 1810, 2030, 2260, 2470, 2700];
plot_curve(1, voltage, n, 'Voltage(V)', 'N(RPM)', 'Voltage-N Curve', '%.0f');
calculate_sensitivity_nonlinearity(voltage, n, 'Voltage', 'N');


voltage = [4, 5, 6, 7, 8, 9, 10, 11, 12];
n = [1120, 1380, 1520, 1710, 1910, 2110, 2320, 2570, 2790];
plot_curve(voltage, n, 'Voltage(V)', 'N(RPM)', 'Voltage-N Curve', '%.0f');
calculate_sensitivity_nonlinearity(voltage, n, 'Voltage', 'N');