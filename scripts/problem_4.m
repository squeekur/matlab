%April Dawn Kester
%akester
%AMS 20
%April 24, 2013
%Problem #4

[t h] = meshgrid(-5:20:1000,280:40:650);

dh = (-5*10^(-11))*(h.^4-300^4);   
dt = ones(size(dh));

L = sqrt(dt.^2 + dh.^2);

quiver(t,h,dt./L,dh./L,0.5); axis tight
hold on

f=@(t,h)(-5*10^(-11))*(h.^4-300^4);
t0=0; %CHANGES BASED ON INITIAL CONDITION
t1=1000;
h0=600; %CHANGES BASED ON INITIAL CONDITION *******

[t,h] = ode45(f,[t0,t1],h0);

plot(t,h); h(t==10) %FIND APPROX VALUE AT y(t)*******
grid on
hold on

xlabel('T','fontsize',14)
ylabel('H','fontsize',14)
title('PROBLEM #4','fontsize',14)