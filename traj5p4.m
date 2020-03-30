%Exemplo 5.4 do livro de Saeed Niku
% planejamento de trajetorias, segmentos lineares combinados com parabolas.
% x(t) = c0+c1*t+(1/2)*c2*t^2
% A articulação deve partir do angulo de 30° e chegar a 75° em 5s a uma
% velocidade de 10°/s
clear all
close all
clc

x0=30;% angulo inicial
xf=70;% angulo final
tf=5;%tempo final
w=10;%velocidade constante 10°/s
tb=(x0-xf+w*tf)/(w);
c2=w/tb;
dt=0.01;%delta t

% eixo do tempo, intervalos
t1=0:dt:tb-dt;
n1=length(t1);
t2=tb:dt:tf-tb-dt;
n2=length(t2);
t3=tf-tb:dt:tf-dt;
n3=length(t3);
t=[t1 t2 t3];

% analise no intervalo 0 <= t < tb
x1=x0+(1/2)*c2*t1.^2;
dx1=c2*t1;
d2x1=c2*ones(1,n1);

% analise no intervalo tb <= t < tf-tb
x2=x1(n1)+w*(t2-tb);
dx2=w*ones(1,n2);
d2x2=zeros(1,n2);

% analise no intervalo tf-tb <= t < tf
x3=xf-(1/2)*c2*(tf-t3).^2;
dx3=c2*(tf-t3);
d2x3=-c2*ones(1,n3);

x=[x1 x2 x3];
dx=[dx1 dx2 dx3];
d2x=[d2x1 d2x2 d2x3];
plot(t,x,t,dx,'--',t,d2x,':')
title('exemplo 5.4 do Saeed Niku')
xlabel('s')
legend(' deslocamento',' velocidade',' aceleracao')
grid
