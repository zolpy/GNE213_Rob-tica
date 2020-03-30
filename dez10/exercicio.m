clear all
close all
clc

i=0;
Teta1=180*pi/3;
Teta2=-180*pi/3;
Td=[1 1];%Posição desejada
Tolerancia=0.01;
l1=1;
l2=1;
q=[Teta1 Teta2]; %Valor Inicial
T=[l1*cos(q(1)) +l2*cos(q(1)+q(2));
   l1*sin(q(1)) +l2*sin(q(1)+q(2))];

Delta=(Td - T);
cont=1;

while norm(deltaT)>tol
    
J=[-l1*(sin(Teta1)) -l2*sin(Teta1+Teta2); l1*cos(Teta1)+l2*cos(Teta1+Teta2) l2*cos(Teta1+Teta2)]
Jinv=inv(J)
end


