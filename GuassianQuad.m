function GuassianQuad(a,b,n)
    function y = f(x)
        y = x^2*log(x);
    end
    if n == 2
        xi = [sqrt(1/3), -sqrt(1/3)];
        wi = [1, 1];
    end
    if n == 5
        xi = [0, sqrt(5-2*sqrt(10/7))/3, -sqrt(5-2*sqrt(10/7))/3 ... 
            sqrt(5+2*sqrt(10/7))/3, -sqrt(5+2*sqrt(10/7))/3, ];
        wi = [128/225, (322+13*sqrt(70))/900, (322+13*sqrt(70))/900 ... 
            (322-13*sqrt(70))/900, (322-13*sqrt(70))/900];
    end
    I = 0;
    for i = 1:n
        I = I + wi(i)*f((b-a)/2*xi(i)+ (b+a)/2);
    end
    I = I * (b-a)/2;
    fprintf('Integral: %3.16f\n',I);
end

