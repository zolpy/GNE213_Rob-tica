clear all
close all
clc

alfaX1=180;
alfaX2=-30;
betaY=90;
gamaZ=180;

gama=gamaZ*(pi/180);%transforma em graus
beta=betaY*(pi/180);
alfa=alfaX1*(pi/180);
alfa2=alfaX2*(pi/180);

X1=[1     0         0     0; 
   0 cos(alfa) -sin(alfa) 0; 
   0 sin(alfa)  cos(alfa) 0;
   0     0         0      1];

X2=[1     0         0     0; 
   0 cos(alfa2) -sin(alfa2) 0; 
   0 sin(alfa2)  cos(alfa2) 0;
   0     0         0      1];

Y=[cos(beta) 0  sin(beta)  0; 
     0       1     0       0;
   -sin(beta) 0  cos(beta) 2;
       0      0     0      1];

Z=[cos(gama) -sin(gama) 0 0; 
   sin(gama)  cos(gama) 0 0;
      0          0      1 0;
      0          0      0 1];
  

R=Y*X1*X2
% INV=inv(R)
  