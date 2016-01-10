function NewtonMethod6(a) % a: tolerance
function y = func(x) % Define the equation.
y = exp(x)+2^(-x)+2*cos(x)-6;
end
function y = dif(x) % Define the derivative of equation.
y = exp(x)-2^(-x)*log(2)-2*sin(x);
end
r = 1; % Initial condition
while abs(func(r)) > a % While function outsides of bounds
    r = r - func(r)/dif(r); % Evaluate 
end
fprintf('%6.16f\n',r);
end