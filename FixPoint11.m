function FixPoint8(a, b)
p = a;
    function y = func(x)
        y = (exp(x)/3.0)^0.5;
    end
while abs(p-func(p)) > 0.0001
    p = func(p);
end
fprintf('%6.16f\n',p);
end