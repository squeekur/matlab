%April Dawn Kester
%akester
%AMS 20
%April 24, 2013
%Euler method for assignment 1

function [t y] = euler( func,t0,t1,y0,num )

h=(t1-t0)/num;

t=t0:h:t1;

y=zeros(1,num+1);

y(1)=y0;

for j=1:num
    y(j+1)=y(j)+h*func(t(j),y(j));

end;

