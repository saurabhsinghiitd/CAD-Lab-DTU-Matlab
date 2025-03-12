clc; clear; close all;

% Define two points
x1 = 1; y1 = 2;
x2 = 4; y2 = 5;

% Plot the points
figure;
plot(x1, y1, 'ro'); hold on;
plot(x2, y2, 'bo');
%plot(x1, y1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); hold on;
%plot(x2, y2, 'bo', 'MarkerSize', 8, 'MarkerFaceColor', 'b');

% Connect the points with a line
plot([x1, x2], [y1, y2], 'k-', 'LineWidth', 2);

% Labels
text(x1, y1, ' P1', 'FontSize', 12);
text(x2, y2, ' P2', 'FontSize', 12);

% Formatting
xlabel('X-axis');
ylabel('Y-axis');
title('Plotting Points and a Line');
axis equal; grid on;
