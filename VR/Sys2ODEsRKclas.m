function [t, x, y] = Sys2ODEsRKclas(ODEs,ab,h,INI)
t(1)=ab(1); x(1) = INI(1); y(1) = INI(2);
n = round((ab(2) - ab(1))/h);
for i = 1:n
t(i+1) = t(i) + h;
tm = t(i) + h/2;
K1 = feval(ODEs,t(i),x(i),y(i));
K2 = feval(ODEs,tm,x(i)+K1(1)*h/2,y(i)+K1(2)*h/2);
K3 = feval(ODEs,tm,x(i)+K2(1)*h/2,y(i)+K2(2)*h/2);
K4 = feval(ODEs,t(i+1),x(i)+K3(1)*h,y(i)+K3(2)*h);
x(i+1) = x(i) + (K1(1) + 2*K2(1) + 2*K3(1) + K4(1))*h/6;
y(i+1) = y(i) + (K1(2) + 2*K2(2) + 2*K3(2) + K4(2))*h/6;
end
