%April Dawn Kester
%akester
%AMS 20
%May 1, 2013
%Vector plots

m1=1;
m2=2;
k1=1;
k2=2;
k3=3;

A = [0, 1, 0, 0; (-1/m1)*(k1+k2), 0, (1/m1)*(k2), 0; 0, 0, 0, 1; (1/m2)*(k2), 0, (-1/m2)*(k2+k3), 0]

[v, r]=eig(A)

%Code to graph particular solution


%Graph phase portrait of u1 & u2
plot(y(:,1),y(:3))

%Solve using ode45, graph
[t,y] = ode45(@tmtss, [0,20], 1);
plot (t,y(:,1),t,y(:,3))