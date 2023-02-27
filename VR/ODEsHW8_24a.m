function [dxdt] = ODEsHW8_24a(t,x,u)
load newval
load valeurs
dxdt(1)=u;
dxdt(2)=-(k*x-f*cos(w*t))/m;


