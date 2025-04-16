function bresenham_circle(xc, yc, r)
    % Bresenham’s Circle Drawing Algorithm
    x = 0;
    y = r;
    P = 1 - r;  % Initial decision parameter
    
    hold on;
    grid on;
    axis equal;
    xlabel('X');
    ylabel('Y');
    
    % Function to plot symmetric points in all 8 octants
    function plot_circle_points(x, y, xc, yc)
        plot(xc + x, yc + y, 'ks', 'MarkerSize', 8, 'MarkerFaceColor', 'k');
        plot(xc - x, yc + y, 'ks', 'MarkerSize', 8, 'MarkerFaceColor', 'k');
        plot(xc + x, yc - y, 'ks', 'MarkerSize', 8, 'MarkerFaceColor', 'k');
        plot(xc - x, yc - y, 'ks', 'MarkerSize', 8, 'MarkerFaceColor', 'k');
        plot(xc + y, yc + x, 'ks', 'MarkerSize', 8, 'MarkerFaceColor', 'k');
        plot(xc - y, yc + x, 'ks', 'MarkerSize', 8, 'MarkerFaceColor', 'k');
        plot(xc + y, yc - x, 'ks', 'MarkerSize', 8, 'MarkerFaceColor', 'k');
        plot(xc - y, yc - x, 'ks', 'MarkerSize', 8, 'MarkerFaceColor', 'k');
    end

    % Plot the initial points
    plot_circle_points(x, y, xc, yc);
    
    % Iterate until x surpasses y
    while x < y
        x = x + 1;
        if P < 0
            P = P + 2*x + 3;
        else
            y = y - 1;
            P = P + 2*x - 2*y + 5;
        end
        plot_circle_points(x, y, xc, yc);
    end
    %hold off;
end

function plotCircle(xc, yc, r, color)
    if nargin < 4
        color = 'b-';
    end
    theta = linspace(0, 2*pi, 100);
    x = xc + r * cos(theta);
    y = yc + r * sin(theta);
    plot(x, y, color, 'LineWidth', 2);
end

clc; clear; close all;

xc= 0;
yc = 0;
r = 20;
bresenham_circle(xc,yc,r);
plotCircle(xc,yc,r,"red")