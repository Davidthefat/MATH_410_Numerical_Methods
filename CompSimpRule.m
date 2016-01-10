function CompSimpRule(a, b, n)
%COMPSIMPRULE Summary of this function goes here
%   Detailed explanation goes here
    
    f = @(x) x^2*exp(-x.^2);
    h = (b-a)/n;
    XI0 = f(a) + f(b);
    XI1 = 0;
    XI2 = 0;
    for i = 1:n-1
       X = a + i*h;
       if mod(i,2) == 0
          XI2 = XI2+f(X);
       else
           XI1 = XI1 + f(X);
       end
    end
    XI = h*(XI0 + 2*XI2 + 4*XI1)/3.0;
    e = 0.49084218055563290985314098936337938 - XI;
    
    fprintf('X: %3.9f\n',XI);
    fprintf('Error: %3.9f\n',e);
end

