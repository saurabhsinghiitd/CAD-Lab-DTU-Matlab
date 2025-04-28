clc; clear; close all;

% Define triangle vertices
X = [1, 4, 2, 1];  % X-coordinates (closed loop)
Y = [1, 2, 5, 1];  % Y-coordinates

% Plot triangle
figure;
plot(X, Y, 'b-', 'LineWidth', 2); hold on;
fill(X, Y, 'g', 'FaceAlpha', 0.5);  % Fill with transparency

% Plot vertices
plot(X, Y, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');

% Label vertices
text(X(1), Y(1), ' A', 'FontSize', 12);
text(X(2), Y(2), ' B', 'FontSize', 12);
text(X(3), Y(3), ' C', 'FontSize', 12);

% Formatting
xlabel('X-axis');
ylabel('Y-axis');
title('Triangle Representation');
axis equal; grid on;
