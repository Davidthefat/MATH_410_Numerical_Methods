function Bisection(a , b) % a: lower bound; b: upper bound
function y = func1(x) % Define the first equation.
y = exp(x)-2;
end
function y = func2(x) % Define the second equation.
y = cos(exp(x)-2);
end
c = (a + b)/2.0; % c: midpoint between a and b 
while abs(func1(c) - func2(c)) > 0.00001 % If the difference of the absolute values of the functions evaluated at c is more than the tolerance
    if func1(c) - func2(c) < 0.0 % If the difference is negative.
        a = c;
    else
        b = c;
    end
    c = (a + b)/2.0;
end
fprintf('%6.16f\n',c);
end