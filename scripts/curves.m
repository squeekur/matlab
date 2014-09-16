%April Dawn Kester
%akester
%AMS 20
%April 24, 2013
%Curves and contour plot

[X Y] = meshgrid(-5:0.5:15,-4:0.5:4);

dY = (4 - X)./(Y.^3 + 2);   
dX = ones(size(dY));

L = sqrt(dX.^2 + dY.^2);

quiver(X,Y,dX./L,dY./L,0.5); axis tight
hold on;

Z = Y.^4 + 2*X.^2 - 16*X + 8*Y;

contour(X,Y,Z);

xlabel('x','fontsize',14)
ylabel('y','fontsize',14)
title('Curves','fontsize',14)