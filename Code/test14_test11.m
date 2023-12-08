% 差动变压器测位移
x = [-1.4, -1.2, -1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4];
voltage = [1513, 1304, 1110, 895, 684, 471, 243, 33, -168, -401, -611, -833, -1051, -1246, -1459];
plot_curve(1, x, voltage, 'X', 'Voltage', 'Voltage-X Curve', '%.0f');
x_linear = x(7:13);
voltage_linear = voltage(7:13);
calculate_sensitivity_nonlinearity(x_linear, voltage_linear, 'X', 'Voltage');

delta_x = [0, 0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2.0, 2.2, 2.4, 2.6, ...
            2.8, 3.0, 3.2, 3.4, 3.6, 3.8, 4.0, 4.2, 4.4, 4.6, 4.8, 5.0, 5.2, 5.4, 5.6, ...
            5.8, 6.0, 6.2, 6.4, 6.6, 6.8, 7.0, 7.2, 7.4, 7.6, 7.8, 8.0, 8.2, 8.4, 8.6, ...
            8.8, 9.0, 9.2, 9.4, 9.6, 9.8, 10.0, 10.2, 10.4, 10.6, 10.8, 11.0, 11.2, 11.4, 11.6, 11.8, 12.0];
voltage_pp = [1100, 1080, 1060, 1050, 1030, 1010, 984, 976, 944, 920, 896,...
                864, 840, 808, 768, 736, 704, 656, 640, 592, 544,...
                504, 452, 405, 353, 306, 259, 201, 149, 98,  41.4,...
                34.3, 90.6, 142, 200, 254, 304, 356, 404, 452, 504,...
                544, 592, 640, 672, 712, 736, 776, 808, 848, 880,...
                912, 928, 952, 976, 992, 1020, 1040, 1050, 1070, 1100];

figure;
plot(delta_x, voltage_pp);
xlabel('Delta X');
ylabel('Voltage');
title('Voltage-Delta X Curve');
hold on;
scatter(delta_x, voltage_pp, 'filled');
grid on;
text(delta_x(29:31), voltage_pp(29:31), num2str(voltage_pp(29:31)', '%.1f'), 'VerticalAlignment', 'top', 'HorizontalAlignment', 'right');
text(delta_x(32:34), voltage_pp(32:34), num2str(voltage_pp(32:34)', '%.1f'), 'VerticalAlignment', 'top', 'HorizontalAlignment', 'left');
hold off;