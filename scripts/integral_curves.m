%April Dawn Kester
%akester
%AMS 20
%April 4, 2013
%Integral curves 

clear all; close all;

minX = -5;   % Set parameters for horizontal x-axis
maxX = 15;
xStep = 1;

minY = -4;  % Set parameters for vertical y-axis
maxY = 4;
yStep = .5;

[X,Y] = meshgrid(minX:xStep:maxX,minY:yStep:maxY);
% Creates a matrix of coordinates (X,Y) using specified parameters

dY = (4 - X)./(Y.^3 + 2);   % Calculates the y-direction of the slope
dX = ones(size(dY));    % Calculates the x-direction of the slope

L = sqrt(dX.^2 + dY.^2);
%{
 Length of vector dY/dX at each coordinate of the grid to be used in
 normalizing the vector (length 1) at each point
%}
quiver(X,Y,dX./L,dY./L,0.3), axis tight
%{
Draws arrows (vectors [dY/dX]/L) at each coordinate (X,Y) of the grid, with
arrow length 0.5 and eliminating space around the axis.
%}

hold on;    % Graphs next item over previous plot

Z = Y.^4 + 2*X.^2 - 16*X + 8*Y; % Solution Z(x,y) to previous ODE

contour(X,Y,Z)
xlabel('x','fontsize',14)
ylabel('y','fontsize',14)
title('Integral Curves','fontsize',14)

