%Exemplo 5.6 do livro de Saeed Niku
% robo planar de 2GDL deve seguir uma linha reta de (3,10) a (8,14).
% Determinar as variaveis articulares theta1 e theta2
clear all
close all
clc

x0=3;% xo inicial
y0=10;% yo inicial
xf=8;% xf final
yf=14;% yf final

dx=0.5;
x=x0:dx:xf;
y=y0+((yf-y0)/(xf-x0)).*(x-x0);

tf=5;%tempo final
dt=0.1;%delta t
t=0:dt:tf;%eixo do tempo

% cinematica inversa do robo planar
l1=9;
l2=9;
costheta2= (x.^2+y.^2-l1.^2-l2.^2)./(2*l1.*l2);
sintheta2=sqrt(1-costheta2.^2);
theta2=atan2(sintheta2,costheta2);

cosB=(x.^2+y.^2+l1.^2-l2.^2)./(2*l1.*sqrt(x.^2+y.^2));
sinB=sqrt(1-cosB.^2);
beta=atan2(sinB,cosB);
theta1=atan(y./x)-beta;


%Resultados
 plot(x,theta1*180/pi,x,theta2*180/pi,'--')
 title('exemplo 5.6 do Saeed Niku')
 xlabel('x')
 ylabel('Graus')
legend(' articulacao1',' articulacao2')
 grid


