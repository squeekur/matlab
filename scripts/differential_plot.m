%April Dawn Kester
%akester
%AMS 20
%April 24, 2013
%Differential Plot

[t y] = meshgrid(-1:0.5:6,-1:0.5:12);

dy = (0.05*y).*(y-5);   
dt = ones(size(dy));

L = sqrt(dt.^2 + dy.^2);

quiver(t,y,dt./L,dy./L,0.5); axis tight
hold on

t = (0:0.1:10);
y = 20./ (4+exp(0.25*t)); 

plot(t,y)

hold on

t = (0:0.1:10);
y= -30./ (-6+exp(0.25*t)); 

plot(t,y)