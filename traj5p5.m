%Exemplo 5.5 do livro de Saeed Niku
%Trajetorias de ordem superior
% Um robo deve ser conduzido partir de uma posicao inicial por meio de 2
% pontos de passagem antes de atingir seu destino final com uma trajetoria
% 4-3-4. Determinar as equacoes da trajetoria e trce os graficos de
% posicao, velocidade e aceleracao.

clear all
close all
clc

x10=30;% posicao inicial inicial
dx10=0;% velocidade inicial
d2x10=0;% aceleracao inicial
x1f=50;%posicao de passagem1
T1=2;%duração do primeiro intervalo
x2f=90;%posicao de passagem 2
T2=4;% duração do segundo intervalo
x3f=70;% posicao final
dx3f=0;% velocidade final
d2x3f=0; %aceleracao final
T3=2; % duracao do terceiro intervalo

dt=0.1;%delta t
t1f=T1;%tempo final do 1o intervalo
t2f=T2;%tempo final do 2o intervalo
t3f=T3;%tempo final do 3o intervalo

%Construcao da matriz A
A=[1 0 0 0 0 0 0 0 0 0 0 0 0 0;
    0 1 0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 2 0 0 0 0 0 0 0 0 0 0 0;
    1 t1f t1f.^2 t1f.^3 t1f.^4 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0;
    0 1 2*t1f 3*t1f.^2 4*t1f.^3 0 -1 0 0 0 0 0 0 0;
    0 0 2 6*t1f 12*t1f.^2 0 0 -2 0 0 0 0 0 0;
    0 0 0 0 0 1 t2f t2f.^2 t2f.^3 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0;
    0 0 0 0 0 0 1 2*t2f 3*t2f.^2 0 -1 0 0 0;
    0 0 0 0 0 0 0 2 6*t2f 0 0 -2 0 0;
    0 0 0 0 0 0 0 0 0 1 t3f t3f.^2 t3f.^3 t3f.^4;
    0 0 0 0 0 0 0 0 0 0 1 2*t1f 3*t1f.^2 4*t1f.^3;
    0 0 0 0 0 0 0 0 0 0 0 2 6*t1f 12*t1f.^2];
B=[x10;dx10;d2x10;x1f;x1f;0;0;x2f;x2f;0;0;x3f;dx3f;d2x3f];%condicoes de contorno
C=inv(A)*B;%calculo dos coeficientes

a=C(1:5)
b=C(6:9)
c=C(10:14)
%polinomio para o primeiro intervalo
t1=0:dt:T1-dt;
x1=a(1)+a(2)*t1+a(3)*t1.^2+a(4)*t1.^3+a(5)*t1.^4;
dx1=a(2)+2*a(3)*t1+3*a(4)*t1.^2+4*a(5)*t1.^3;
d2x1=2*a(3)+6*a(4)*t1+12*a(5)*t1.^2;

%polinomio para o segundo intervalo
t2=0:dt:T2-dt;
x2=b(1)+b(2)*t2+b(3)*t2.^2+b(4)*t2.^3;
dx2=b(2)+2*b(3)*t2+3*b(4)*t2.^2;
d2x2=2*b(3)+6*b(4)*t2;

%polinomio para o pterceiro intervalo
t3=0:dt:T3-dt;
x3=c(1)+c(2)*t3+c(3)*t3.^2+c(4)*t3.^3+c(5)*t3.^4;
dx3=c(2)+2*c(3)*t3+3*c(4)*t3.^2+4*c(5)*t3.^3;
d2x3=2*c(3)+6*c(4)*t3+12*c(5)*t3.^2;

x=[x1 x2 x3];
dx=[dx1 dx2 dx3];
d2x=[d2x1 d2x2 d2x3];
t=0:dt:T1+T2+T3-dt;


%Resultados
plot(t,x,t,dx,'--',t,d2x,':')
title('exemplo 5.5 do Saeed Niku')
xlabel('s')
legend(' deslocamento',' velocidade',' aceleracao')
grid


