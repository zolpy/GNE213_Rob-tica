clear all
close all
clc

alfaX=-30;
betaY=90;
gamaZ=10;

gama=gamaZ*(pi/180);%transforma em graus
beta=betaY*(pi/180);
alfa=alfaX*(pi/180);

X=[1     0         0      0; 
   0 cos(alfa) -sin(alfa) 0; 
   0 sin(alfa)  cos(alfa) 0;
   0     0         0      1];

Y=[cos(beta) 0  sin(beta)  3; 
     0       1     0       0;
   -sin(beta) 0  cos(beta) 2;
       0      0     0      1];

Z=[cos(gama) -sin(gama) 0 1; 
   sin(gama)  cos(gama) 0 2;
      0          0      1 3;
      0          0      0 1];
  

R=Y*X
% INV=inv(R)
  