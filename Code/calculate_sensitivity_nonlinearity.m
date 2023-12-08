function [delta_x, delta_y, sensitivity, delta_y_max, y_FS, nonlinearity_error] = calculate_sensitivity_nonlinearity(x, y, x_name, y_name)
    % 计算灵敏度和非线性误差
    delta_x = x(end) - x(1);
    delta_y = y(end) - y(1);
    sensitivity = delta_y / delta_x;

    delta_y_max = max(abs((y - y(1))- sensitivity * (x - x(1))));
    y_FS = y(end) ;%- y(1);
    nonlinearity_error = delta_y_max / y_FS * 100;

    % 输出结果
    fprintf('Delta %s: %f\n', x_name, delta_x);
    fprintf('Delta %s: %f\n', y_name, delta_y);
    fprintf('Sensitivity: %f\n\n', sensitivity);

    fprintf('Delta Y Max: %f\n', delta_y_max);
    fprintf('Y FS: %f\n', y_FS);
    fprintf('Nonlinearity Error: %f%%\n\n', nonlinearity_error);
end