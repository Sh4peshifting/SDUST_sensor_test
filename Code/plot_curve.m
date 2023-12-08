function [p] = plot_curve(n, x, y, x_name, y_name, title_name, format)
    p = polyfit(x, y, n);
    figure;
    plot(x, polyval(p, x), '--');
    xlabel(x_name);
    ylabel(y_name);
    title(title_name);
    hold on;
    scatter(x, y, 'filled');
    grid on;
    % 假设 p 是 polyfit 的结果，n 是多项式的次数
    str = 'y = ';
    for i = n:-1:1
        if i == n && p(n-i+1) >= 0
            sign = '';
        elseif p(n-i+1) >= 0
            sign = '+ ';
        else
            sign = '- ';
        end

        if i == 1
            str = [str, sprintf('%s%.3fx ', sign, abs(p(n-i+1)))]; %#ok<AGROW>
        else
            str = [str, sprintf('%s%.5fx^%d ', sign, abs(p(n-i+1)), i)]; %#ok<AGROW>
        end
    end

    if p(end) >= 0
        str = [str, sprintf('+ %.3f', abs(p(end)))];
    else
        str = [str, sprintf('- %.3f', abs(p(end)))];
    end

    text(x(2), y(end), str, 'VerticalAlignment', 'top', 'HorizontalAlignment', 'left');
    text(x, y, num2str(y', format), 'VerticalAlignment', 'top', 'HorizontalAlignment', 'left');
    hold off;
    if n>=2
        % 计算预测值
        y_pred = polyval(p, x);

        sensitivity = diff(y_pred)./diff(x);

        fprintf('敏感度: %.3f\n', mean(sensitivity));

        % 计算误差
        error = y - y_pred;

        % 计算均方误差
        mse = mean(error.^2);

        % 打印均方误差
        fprintf('拟合曲线与实际数据的均方误差: %.3f\n', mse);
    end
end

