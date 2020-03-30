function C = rotz(alpha)
alpha1=alpha*(pi/180);

C=[cos(alpha1) -sin(alpha1) 0; 
   sin(alpha1)  cos(alpha1) 0;
      0          0          1]