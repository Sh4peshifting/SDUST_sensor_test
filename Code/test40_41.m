luminance = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
current = [0, 0.04, 0.08, 0.12, 0.15, 0.18, 0.21, 0.24, 0.26, 0.30, 0.33];
voltage = [2.49, 2.51, 2.53, 2.54, 2.55, 2.56, 2.57, 2.58, 2.59, 2.60];
plot_curve(1, luminance, current, 'Luminance(Lx)', 'Current(mA)', 'Luminance-Current Curve', '%.2f');
luminance1 = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]; 
plot_curve(1, luminance1, voltage, 'Luminance(Lx)', 'Voltage(V)', 'Luminance-Voltage Curve', '%.2f');

photocurrent = [0, 0.21, 0.37, 0.51, 0.60, 0.73, 0.97, 1.01, 1.14, 1.34, 1.60];
plot_curve(2, luminance, photocurrent, 'Luminance(Lx)', 'Photocurrent(mA)', 'Luminance-Photocurrent Curve', '%.2f');

voltage = [0, 2, 4, 6, 8, 10];
current_1 = [0, 0.03, 0.07, 0.11, 0.15, 0.20];
current_2 = [0, 0.11, 0.26, 0.42, 0.58, 0.75];
current_3 = [0, 0.21, 0.48, 0.78, 1.07, 1.39];
display_name1 = 'Luminance=10Lx';
display_name2 = 'Luminance=50Lx';
display_name3 = 'Luminance=100Lx';
plot_data(display_name1, display_name2, display_name3, voltage, voltage, voltage, current_1, current_2, current_3, 'Voltage(V)', 'Current(mA)', 'Voltage-Current Curve', '%.2f');