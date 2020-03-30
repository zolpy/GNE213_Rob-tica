clear all
close all
clc

gama=-30;
beta=90;
alfa=+180;% RESUTA NA MESMA MATRIZ(+180 OU -180)

alfaZ=alfa*(pi/180);%transforma em graus
betaY=beta*(pi/180);
gamaX=gama*(pi/180);

X=[1     0         0        0; 
   0 cos(gamaX) -sin(gamaX) 0; 
   0 sin(gamaX)  cos(gamaX) 0;
   0     0         0        1];

Y=[ cos(betaY) 0  sin(betaY) 0; 
        0      1     0       0;
   -sin(betaY) 0  cos(betaY) 0;
        0      0     0       1];

Z=[cos(alfaZ) -sin(alfaZ) 0 3; 
   sin(alfaZ)  cos(alfaZ) 0 0;
      0          0        1 0;
      0          0        0 1];
  

R=Z
% INV=inv(R)
  