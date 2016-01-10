function Taylor(a,b,N,in)
    w(1) = in;
    h = (b-a)/N;
    function y = p(t,x)
        y = t^(-2)*(sin(2*t)-2*t*x);
    end
    function y = pp(t,x)
        y = 2*(t*cos(2*t)-sin(2*t))/t^3-2*(t*p(t,x)-x)/t^2;
    end
    function y = ppp(t,x)
        y = 2*(-2*t*sin(2*t)-cos(2*t))/t^3-6*(t*cos(2*t)-sin(2*t))/t^4-2*(-1*(sin(2*t)-2*t*x)/t^2-p(t,x)+(-2*t*p(t,x)-2*x+2*cos(2*t))/t)/t^2-4*((sin(2*t)-2*t*x)/t-x)/t^3;
    end
    for i = 2:N
        t = a+ i* h;
        w(i) = w(i-1)+h*((1+h/2)*(w(i-1)-t^2+1)-h*t);
        T(i) = w(i)+h/2*p(t,w(i))+h^2/6*pp(t,w(i))+h^3/24*ppp(t,w(i));
         fprintf('t: %3.19f\n',t);
    fprintf('w: %3.19f\n',T(i));
    end
end

