clear all
clc
close all

K=1;
s = tf('s');
%G0=zpk([],[0,-3,-5],K)%G2=zpk([-3,-5],[2,4],K)

G=(K/(s*(s+2)*(s+5)))
rlocus(G);
% step(G)

Km0=217;
Wm0=4.99;
fprintf('Km0= %.3f \n', Km0)
fprintf('Wm0= %.3f \n\n', Wm0)

Km1=77.2;
Wm1=3.29;
fprintf('Km1= %.3f \n', Km1)
fprintf('Wm1= %.3f \n\n', Wm1)

Km2=18;
Wm2=1.76;
fprintf('Km2= %.3f \n', Km2)
fprintf('Wm2= %.3f \n\n', Wm2)

Kp0=0.6*(Km0);
Ki0=((Kp0*Wm0)/3.1415);
Kd0=((Kp0*3.1415)/(4*Wm0));
fprintf('Kp0= %.3f \n', Kp0)
fprintf('Ki0= %.3f \n', Ki0)
fprintf('Kd0= %.3f \n', Kd0)
fprintf('PID: K0(s) = %.3f + %.3f /s + %.3f *s\n\n', Kp0,Ki0,Kd0) 

figure
C0 = pid(Kp0,Ki0,Kd0)
T0 = feedback(C0*G,1)
% t = 0:0.01:2;
step(T0)
legend('Kp0,Ki0,Kd0',4);
grid on


Kp1=0.6*(Km1);
Ki1=((Kp1*Wm1)/3.1415);
Kd1=((Kp1*3.1415)/(4*Wm1));
fprintf('Kp1= %.3f \n', Kp1)
fprintf('Ki1= %.3f \n', Ki1)
fprintf('Kd1= %.3f \n', Kd1)
fprintf('PID: K1(s) = %.3f + %.3f /s + %.3f *s\n\n', Kp1,Ki1,Kd1)

figure
C1 = pid(Kp1,Ki1,Kd1)
T1 = feedback(C1*G,1)
% t = 0:0.01:2;
step(T1)
legend('Kp1,Ki1,Kd1',4);
grid on


Kp2=0.6*(Km2);
Ki2=((Kp2*Wm2)/3.1415);
Kd2=((Kp2*3.1415)/(4*Wm2));
fprintf('Kp2= %.3f \n', Kp2)
fprintf('Ki2= %.3f \n', Ki2)
fprintf('Kd2= %.3f \n', Kd2)
fprintf('PID: K2(s) = %.3f + %.3f /s + %.3f *s\n\n', Kp2,Ki2,Kd2)

figure
C2 = pid(Kp2,Ki2,Kd2)
T2 = feedback(C2*G,1)
%t = 0:0.01:2;
step(T2)
legend('Kp2,Ki2,Kd2',4);
grid on
