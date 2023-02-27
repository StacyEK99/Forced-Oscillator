function ddx=fs(t,x1,x2)
%function ddy=fs(t,y1,y2)
%y2=y'
% ddy=3*y2-2*y1+6*exp(3*t);
%y''= 3*y'-2*y+6*exp(3*t);y(0)=1;y'(0)=-1
%Solution:y(t) = e^t (-8 e^t + 3 e^(2 t) + 6)

load valeurs
betta=c/(2*m);
omega=sqrt(k/m);
ddx=-2*betta*x2 -omega^2*x1;
% ddx=-8.33*x2 -1166.667*x1;
