function B = roty(beta)
beta1=beta*(pi/180);

B=[ cos(beta1) 0  -sin(beta1); 
    0 1 0;
    sin(beta1) 0  cos(beta1)];