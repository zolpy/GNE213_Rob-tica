clear all
close all
clc

alfa=10;
beta=-90;
gama=30;

alfa1=alfa*(pi/180);%transforma em graus
beta1=beta*(pi/180);
gama1=gama*(pi/180);

X=[1     0         0        2; 
   0 cos(gama1) -sin(gama1) sin(gama1)*3; 
   0 sin(gama1)  cos(gama1) -cos(gama1)*3;
   0     0         0        1];

Y=[ cos(beta1) 0  sin(beta1) 0; 
        0      1     0       0;
   -sin(beta1) 0  cos(beta1) 0;
        0      0     0       1];

Z=[cos(alfa1) -sin(alfa1) 0 1; 
   sin(alfa1)  cos(alfa1) 0 2;
      0          0        1 3
      0          0        0 1];
  

R=X*Y
% INV=inv(R)
  