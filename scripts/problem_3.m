%April Dawn Kester
%akester
%AMS 20
%April 24, 2013
%Problem #3

[t y] = meshgrid(0.5:0.5:1,0.8:0.5:200);

dy = (y.^2)+ (t.^2);   
dt = ones(size(dy));

L = sqrt(dt.^2 + dy.^2);

quiver(t,y,dt./L,dy./L,0.5); axis tight
hold on

f=@(t,y)(y.^2)+ (t.^2);
t0=0; %CHANGES BASED ON INITIAL CONDITION
t1=1;
y0=1; %CHANGES BASED ON INITIAL CONDITION *******

h=0.001; %CHANGES STEP SIZE ********
n= (t1-t0)/h;

%[t,y] = ode45(f,[t0,t1],y0);
[t,y] = euler( f,t0,t1,y0,n );

plot(t,y); y(t==.976) %FIND APPROX VALUE AT y(t)*******
grid on

hold on

xlabel('T','fontsize',14)
ylabel('Y','fontsize',14)
title('PROBLEM #3','fontsize',14)