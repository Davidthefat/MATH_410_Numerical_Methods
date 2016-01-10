function Rt3Bisection(a , b) % a: lower bound; b: upper bound
function y = func(x) % Define the first equation.
y = x^2-3.0;
end
c = (a + b)/2.0; % c: midpoint between a and b 
while abs(func(c)) > 0.0001 % If the absolute value of the functions evaluated at c is more than the tolerance
    if func(c) < 0.0 % If the value is negative.
        a = c;
    else
        b = c;
    end
    c = (a + b)/2.0;
end
fprintf('%6.16f\n',c);
end