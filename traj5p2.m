%Exemplo 5.2 do livro de Saeed Niku
% a articulação deve partir do angulo de 30° e chegar a 75° em 5s. Logo,
% a articulacao deve chegar a 105° em mais 3s.
clear all
close all
clc

x0=30;% angulo inicial
xf=75;% angulo final
xf1=105;%angulo final 1
tf=5;%tempo final
tf1=8;%tempo final 1
dt=0.1;%delta t
t=0:dt:tf;%eixo do tempo
t1=tf:dt:tf1-dt;
%Para o primeiro intervalo
A=[1 0 0 0;
    0 1 0 0;
    1 tf tf.^2 tf.^3;
    0 1 2*tf 3*tf.^2];
B=[x0;0;xf;0];
C=inv(A)*B;

x=C(1)+C(2)*t+C(3)*t.^2+C(4)*t.^3;
dx=C(2)+2*C(3)*t+3*C(4)*t.^2;
d2x=2*C(3)+6*C(4)*t;

%Para o segundo intervalo
A1=[1 tf tf.^2 tf.^3;
   0 1 2*tf 3*tf.^2;
    1 tf1 tf1.^2 tf1.^3;
    0 1 2*tf1 3*tf1.^2];
B1=[xf;0;xf1;0];

C1=inv(A1)*B1;

x1=C1(1)+C1(2)*t1+C1(3)*t1.^2+C1(4)*t1.^3;
dx1=C1(2)+2*C1(3)*t1+3*C1(4)*t1.^2;
d2x1=2*C1(3)+6*C1(4)*t1;

%Resultados
plot(t,x,t,dx,'--',t,d2x,':')
hold on
plot(t1,x1,t1,dx1,'--',t1,d2x1,':')
title('exemplo 5.2 do Saeed Niku')
xlabel('s')
legend(' deslocamento',' velocidade',' aceleracao')
grid
hold off

