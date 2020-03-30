%OUTRA FORMA DE RESOLVER
clear all
close all
clc

alfaX=-30;
betaY=-90;
gamaZ=-180;

alfa=alfaX*(pi/180);
beta=betaY*(pi/180);
gama=gamaZ*(pi/180);%transforma em graus

X=[1     0         0      0; 
   0 cos(alfa) -sin(alfa) 0; 
   0 sin(alfa)  cos(alfa) 0;
   0     0         0      1];

Y=[cos(beta) 0  sin(beta)  0; 
     0       1     0       0;
  -sin(beta) 0  cos(beta)  2;
       0      0     0      1];

Z=[cos(gama) -sin(gama) 0 0; 
   sin(gama)  cos(gama) 0 0;
      0          0      1 0;
      0          0      0 1];
  
R=Y*Z*X
% INV=inv(R)
  