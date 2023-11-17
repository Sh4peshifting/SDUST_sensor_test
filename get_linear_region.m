function [x_linear] = get_linear_region(x, y, p)
    % 获取线性区域
    y_linear = polyval(p, x);
    x_linear = x(y - y_linear < 1);
end