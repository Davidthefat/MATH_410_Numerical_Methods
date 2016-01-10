function FixPoint8(a, b)
p = a;
    function y = func(x)
        y = 2^(-x);
    end
while abs(p-func(p)) > 0.0001
    p = func(p);
end
fprintf('%6.16f\n',p);
end