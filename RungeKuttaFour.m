function RungeKuttaFour(a,b,N,w)
h = (b-a)/N;
    function y = f(t,x)
        y =(2-2*t*x)/(t^2+1);
    end
t = a;
fprintf('t: %3.19f\n',t);
fprintf('w: %3.19f\n',w);
for i = 1:N
   K1 = h*f(t,w);
   K2 = h*f(t+h/2,w+K1/2);
   K3 = h*f(t+h/2,w+K2/2);
   K4 = h*f(t+h,w+K3);
   w = w+ (K1+2*K2+2*K3+K4)/6;
   t = a+i*h;
   fprintf('t: %3.19f\n',t);
   fprintf('w: %3.19f\n',w);
end
end

