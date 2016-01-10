function NaturalCubicSpline()
%NATURALCUBICSPLINE Summary of this function goes here
%   Detailed explanation goes here
x = [-1 -0.5 0 0.5];
f = [0.86199480 0.95802009 1.0986123 1.2943767];

n = length(x);
h = zeros(1,n);
l = zeros(1,n);
u = zeros(1,n);
z = zeros(1,n);
c = zeros(1,n);
a = zeros(1,n);
b = zeros(1,n);
d = zeros(1,n);
    for i = 1:n-1
        h(i) = x(i+1) - x(i);
    end
    for i = 2:n-1
        a(i) = ((3.0/h(i))*(f(i+1)-f(i)))-((3.0/h(i-1))*(f(i)-f(i-1)));
    end
    l(1) = 1;
    u(1) = 0;
    z(1) = 0;
    for i =2:n-1
        l(i) = 2.0*(x(i+1)-x(i-1)) - h(i-1)*u(i-1);
        u(i) = h(i)/l(i);
        z(i) = (a(i) - h(i-1)*z(i-1))/l(i);
    end
    l(n) = 1;
    z(n) = 0;
    c(n) = 0;
    for i = n-1:-1:1
        c(i) = z(i) - u(i)*c(i+1);
        b(i) = ((f(i+1)-f(i))/h(i))-(h(i)*(c(i+1)+2.0*c(i))/3.0);
        d(i) = (c(i+1)-c(i))/(3.0*h(i));
    end
fprintf('a: %6.16f\n',f); 
fprintf('b: %6.16f\n',b); 
fprintf('c: %6.16f\n',c); 
fprintf('d: %6.16f\n',d); 
end

