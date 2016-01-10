function SecantMethod7(a) % a: tolerance
function y = func(x) % Define the equation.
y = x^3-2*x^2-5;
end
r = 1.1;
c = 1;
while abs(func(r)) > a % While function outsides of bounds
    temp = r;
    r = r-(func(r)*(r-c))/(func(r)-func(c)); % Evaluate secant method
    c = temp;
end
fprintf('%6.16f\n',r);
end