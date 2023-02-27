function [y,t]=wsecRK4(fs,y10,y20,a,b,N)
h=(b-a)/N;
y1(1)=y10;y2(1)=y20;t(1)=a;
for i=1:N
    t(i+1)=a+i*h;
    k11=y2(i);
    k12=feval(fs,t(i),y1(i),y2(i));
    
    k21=y2(i)+(h/2)*k12;    
    k22=feval(fs,t(i)+h/2,y1(i)+(h/2)*k11,y2(i)+(h/2)*k12);
    
    k31=y2(i)+(h/2)*k22;
    k32=feval(fs,t(i)+h/2,y1(i)+(h/2)*k21,y2(i)+(h/2)*k22);
    

    k41=y2(i)+h*k32; 
    k42=feval(fs,t(i)+h,y1(i)+h*k31,y2(i)+h*k32);
   
    y1(i+1)=y1(i)+(h/6)*(k11+2*k21+2*k31+k41);
    y2(i+1)=y2(i)+(h/6)*(k12+2*k22+2*k32+k42);
    
    
    disp([k11 k12 k21 k22 k31 k32 k41 k42 y1(i+1) y2(i+1)]);
    
end
y=[y1 ;y2];

    
