function AdamsBashforth(a,b,N,w)
h = (b-a)/N;
    function y = f(t,x)
        y =(2-2*t*x)/(t^2+1);
    end
t = a;
fprintf('t: %3.19f\n',t);
fprintf('w: %3.19f\n',w);
ww = zeros(N,1);
for i = 1:4
   K1 = h*f(t,w);
   K2 = h*f(t+h/2,w+K1/2);
   K3 = h*f(t+h/2,w+K2/2);
   K4 = h*f(t+h,w+K3);
   ww(i) = w;
   w = w+ (K1+2*K2+2*K3+K4)/6;
   t = a+i*h;
   fprintf('t: %3.19f\n',t);
   fprintf('w: %3.19f\n',w);
end
%End Runge Kutta
disp('ERK');
for i = 4:N-1
   ww(i+1) = h/24*(55*f(i*h,ww(i))-59*f((i-1)*h,ww(i-1))+37*f((i-2)*h,ww(i-2))-9*f((i-3)*h,ww(i-3)));
   fprintf('t: %3.19f\n',(i+1)*h);
   fprintf('w: %3.19f\n',ww(i+1));
end

end

