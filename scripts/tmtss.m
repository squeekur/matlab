%April Dawn Kester
%akester
%AMS 20
%May 1, 2013
%tmtss

function dy = tmtss(t,y)

m1=1;
m2=2;
k1=1;
k2=2;
k3=3;

u1=y1;
v1=y2;
u2=y3;
v2=y4;

u1(0)=1;v1(0)=0;u2(0)=2;v2(0)=0;

dy=zeros(4,1);
dy(1)= y2;
dy(2)=(-1/m1)*(k1+k2)y1 + (k2)y3;
dy(3)= y(4); 
dy(4)=(1/m2)*(k2)y1 + (-1/m2)*(k2+k3)y3;