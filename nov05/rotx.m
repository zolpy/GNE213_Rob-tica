function A = rotx(gama)
gama1=gama*(pi/180);

A=[1 0 0; 
0 cos(gama1) -sin(gama1); 
0 sin(gama1) cos(gama1)];