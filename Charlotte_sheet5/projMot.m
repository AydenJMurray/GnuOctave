clear all;
close all;
%graphics_toolkit("gnuplot");

v0=input("Enter an initial velocity: ");

x0=y0=0;
g =9.81;

x = [];
y = [];


for theta = [5:5:85]

  theta = theta*(pi/180);
  
  tfinal = 2*v0*sin(theta)/g;
  
  Vx = v0*cos(theta);
  Vy = v0*sin(theta); 
  
  t=[0:0.001:tfinal];
  
  y = y0 + Vy*t - 0.5*g*(t.^2);
  x = x0 + Vx*t;
  
  
  plot(x,y);  
  hold on;

  
end

xlabel ("x(t)");
ylabel ("y(t)");
title("Projectile motion");





    
  
    
