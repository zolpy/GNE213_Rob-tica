%Exemplo 5.3 do livro de Saeed Niku
% Planejamento por polinomios de 5a ordem.
% a articulação deve partir do angulo de 30° e chegar a 75° em 5s. 
%condicoes iniciais de aceleracao: 5m/s^2 e -5m/s^2
clear all
close all
clc

x0=30;% angulo inicial
xf=75;% angulo final
dx0=0;% velocidade inicial
dxf=0;% velocidade final
d2x0=10;% aceleracao inicial
d2xf=-5;% desaceleracao final
tf=5;%tempo final

dt=0.1;%delta t
t=0:dt:tf;%eixo do tempo

%Para o primeiro intervalo
A=[1 0 0 0 0 0;
    0 1 0 0 0 0;
    0 0 2 0 0 0;
    1 tf tf.^2 tf.^3 tf.^4 tf.^5;
    0 1 2*tf 3*tf.^2 4*tf.^3 5*tf.^4;
    0 0 2 6*tf 12*tf.^2 20*tf.^3];
B=[x0;dx0;d2x0;xf;dxf;d2xf];
C=inv(A)*B;

x=C(1)+C(2)*t+C(3)*t.^2+C(4)*t.^3 +C(5)*t.^4+C(6)*t.^5;
dx=C(2)+2*C(3)*t+3*C(4)*t.^2+4*C(5)*t.^3+5*C(6)*t.^4;
d2x=2*C(3)+6*C(4)*t+12*C(5)*t.^2+20*C(6)*t.^3;

%Resultados
plot(t,x,t,dx,'--',t,d2x,':')
title('exemplo 5.3 do Saeed Niku')
xlabel('s')
legend(' deslocamento',' velocidade',' aceleracao')
grid


