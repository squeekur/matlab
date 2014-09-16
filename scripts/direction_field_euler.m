%April Dawn Kester
%akester
%AMS 20
%April 24, 2013
%Direction field w/euler

[t y] = meshgrid(-1:0.5:11,-1:0.5:10);

dy = (y.^2)+ (t.^2);   
dt = ones(size(dy));

L = sqrt(dt.^2 + dy.^2);

quiver(t,y,dt./L,dy./L,0.5); axis tight
hold on

f=@(t,y)(y.^2)+ (t.^2);
t0=0; %CHANGES BASED ON INITIAL CONDITION
t1=10;
y0=1; %CHANGES BASED ON INITIAL CONDITION *******

h=0.1; %CHANGES STEP SIZE ********
n= (t1-t0)/h;

[t,y] = euler( f,t0,t1,y0,n );

plot(t,y); y(t==0.8) %FIND APPROX VALUE AT y(t)*******
hold on

xlabel('T','fontsize',14)
ylabel('Y','fontsize',14)
title('PROBLEM #2 euler','fontsize',14)