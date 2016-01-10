function AdamsFourth(a,b,N,alph)
h = (b-a)/N;
    function y = f(t,x)
        y =(2-2*t*x)/(t^2+1);
    end
t(1) = a;
w(1) = alph;
fprintf('t: %3.19f\n',t(1));
fprintf('w: %3.19f\n',w(1));
for i = 2:4
   K1 = h*f(t(i-1),w(i-1));
   K2 = h*f(t(i-1)+h/2,w(i-1)+K1/2);
   K3 = h*f(t(i-1)+h/2,w(i-1)+K2/2);
   K4 = h*f(t(i-1)+h,w(i-1)+K3);
   w(i) = w(i-1)+ (K1+2*K2+2*K3+K4)/6;
   t(i) = a+i*h;
   fprintf('t: %3.19f\n',t(i));
   fprintf('w: %3.19f\n',w(i));
end
%End Runge Kutta
disp('ERK');
for i = 5:N
    tt = a+i*h;
   ww = w(4)+h/24*(55*f(t(4),w(4))-59*f(t(3),w(3))+37*f(t(2),w(2))-9*f(t(1),w(1)));
   ww = w(4)+h/24*(9*f(tt,ww)-+19*f(t(4),w(4))-5*f(t(3),w(3))+f(t(2),w(2)));
   fprintf('t: %3.19f\n',tt);
   fprintf('w: %3.19f\n',ww);
   for j = 1:3
       t(j)=t(j+1);
       w(j)=w(j+1);
   end
       t(4) = tt;
       w(4)=ww;
end

end

