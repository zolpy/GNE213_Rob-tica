%Exemplo 5.1 do livro de Saeed Niku
% a articulação deve partir do angulo de 30° e chegar a 75° em 5s
clear all
close all
clc

x0=30;% angulo inicial
xf=75;% angulo final
tf=5;%tempo final
dt=0.1;%delta t
t=0:dt:tf-dt;%eixo do tempo

A=[1 0 0 0;
    0 1 0 0;
    1 tf tf.^2 tf.^3;
    0 1 2*tf 3*tf.^2];
B=[x0;0;xf;0];
C=inv(A)*B;

B1=A*C;

%x=30+5.4*t.^2-0.72*t.^3;
%dx=2*5.4*t-3*0.72*t.^2;
%d2x=2*5.4-6*0.72*t;

x=C(1)+C(2)*t+C(3)*t.^2+C(4)*t.^3;
dx=C(2)+2*C(3)*t+3*C(4)*t.^2;
d2x=2*C(3)+6*C(4)*t;

plot(t,x,t,dx,'--',t,d2x,':')
title('exemplo 5.1 do Saeed Niku')
xlabel('s')
legend(' deslocamento',' velocidade',' aceleracao')
grid
