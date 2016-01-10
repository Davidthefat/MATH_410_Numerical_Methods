function Euler(a,b,N,w)
h = (b-a)/N;
t = a;
    function y = f(t,x)
        y = t^(-2)*(sin(2*t)-2*t*x);
    end
    function y = d(t)
        y = (4+cos(2)-cos(2*t))/(2*t^2);
    end
    fprintf('t: %3.19f\n',t);
    
    fprintf('w: %3.19f\n',w);
for i = 1:N
    w = w + h*f(t,w);
    t = a+ i* h;
    fprintf('t: %3.19f\n',t);
    fprintf('w: %3.19f\n',w);
    fprintf('y: %3.19f\n',d(t));
    fprintf('e: %3.19f\n',d(t)-w);
end

end

