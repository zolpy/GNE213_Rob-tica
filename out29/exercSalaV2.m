clear all
clc
close all

K=1;
s = tf('s');
%G0=zpk([],[0,-3,-5],K)%G2=zpk([-3,-5],[2,4],K)

G=(K/(s*(s+2)*(s+5)))
rlocus(G);
% step(G)

Kp = 300;
C = pid(Kp)
T = feedback(C*P,1)

t = 0:0.01:2;
step(T,t)