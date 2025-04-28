function main_bresenham_line()
clc; clear; close all;
bresenham_line(1, 1, 13, 6);
plotLine(1,1,13,6,"red");

end

function bresenham_line(x1, y1, x2, y2)
    % Bresenham's Line Algorithm in MATLAB
    dx = abs(x2 - x1);
    dy = abs(y2 - y1);
    sx = sign(x2 - x1);
    sy = sign(y2 - y1);
    
    if dy > dx
        [dx, dy] = deal(dy, dx);  % Swap if the slope is steep
        steep = true;
    else
        steep = false;
    end
    
    D = 2 * dy - dx;
    x = x1;
    y = y1;
    
    hold on;
    grid on;
    axis equal;
    xlabel('X');
    ylabel('Y');
    
    for i = 1:dx+1
        plot(x, y, 'ks', 'MarkerSize', 8, 'MarkerFaceColor', 'k'); % Plot pixel
        
        if steep
            y = y + sy;
        else
            x = x + sx;
        end
        
        if D > 0
            if steep
                x = x + sx;
            else
                y = y + sy;
            end
            D = D - 2 * dx;
        end
        D = D + 2 * dy;
    end
    %hold off;
end

function plotLine(x1, y1, x2, y2, color)
    if nargin < 5
        color = 'k-';
    end
    plot([x1 x2], [y1 y2], color, 'LineWidth', 2);
end


