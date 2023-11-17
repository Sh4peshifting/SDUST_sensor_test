% 绘制应变片单臂、半桥、全桥电桥的电压-重量曲线及计算灵敏度和非线性误差
% 假设电压数据存储在一个名为voltage的向量中，重量数据存储在一个名为weight的向量中

% 单臂
% voltage = [2.8, -2.5, -8.3, -13.4, -19.3, -25.1, -30.9, -36.5, -42.1, -47.8];
weight = [0, 20, 40, 60, 80, 100, 120, 140, 160, 180];
%半桥
% voltage = [2.2, -8.8, -20.0, -31.3, -42.6, -53.9, -65.9, -77.3, -89.0, -100.3];
%全桥
voltage = [0.6, 22.2, 43.9, 65.8, 87.0, 107.3, 129.4, 151.1, 172.7, 194.9];
plot_curve(1, weight, voltage, 'Weight', 'Voltage', 'Voltage-Weight Curve', '%.1f');
calculate_sensitivity_nonlinearity(weight, voltage, 'Weight', 'Voltage');
