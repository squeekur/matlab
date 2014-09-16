%April Dawn Kester
%akester
%AMS 20
%April 24, 2013
%Direction field w/ode45

[t y] = meshgrid(-1:0.5:11,-1:0.5:10);

dy = (0.05*y).*(y-5);   
dt = ones(size(dy));

L = sqrt(dt.^2 + dy.^2);

quiver(t,y,dt./L,dy./L,0.5); axis tight
hold on

f=@(t,y)(0.05*y).*(y-5);
t0=0; %CHANGES BASED ON INITIAL CONDITION
t1=7;
y0=6; %CHANGES BASED ON INITIAL CONDITION *******

%h=0.01; %CHANGES STEP SIZE ********
%n= (t1-t0)/h;

[t,y] = ode45(f,[t0,t1],y0);

plot(t,y); y(t==7) %FIND APPROX VALUE AT y(t)*******
hold on

xlabel('T','fontsize',14)
ylabel('Y','fontsize',14)
title('PROBLEM #2 ode45','fontsize',14)