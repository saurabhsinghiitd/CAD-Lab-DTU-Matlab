clc; clear; close all;

% Define rectangle vertices
X = [2, 6, 6, 2, 2];  % X-coordinates (closed loop)
Y = [1, 1, 4, 4, 1];  % Y-coordinates

% Plot rectangle
figure;
plot(X, Y, 'b-', 'LineWidth', 2); hold on;
fill(X, Y, 'c', 'FaceAlpha', 0.5);  % Fill with transparency

% Plot vertices
plot(X, Y, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');

% Label vertices
text(X(1), Y(1), ' P1', 'FontSize', 12);
text(X(2), Y(2), ' P2', 'FontSize', 12);
text(X(3), Y(3), ' P3', 'FontSize', 12);
text(X(4), Y(4), ' P4', 'FontSize', 12);

% Formatting
xlabel('X-axis');
ylabel('Y-axis');
title('Rectangle Representation');
axis equal; grid on;
