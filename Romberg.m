function Romberg(a,b,n)
h = b-a;
R = zeros(2,n);
    function y = f(x)
        y = cos(x)^2;
    end
R(1,1) = h/2*(f(a)+f(b));
fprintf('R(1,1): %3.9f\n',R(1,1));
    for i = 2:n
        t = 0;
        for k = 1:2^(i-2)
            t = t + f(a+(k-0.5)*h);
        end
        R(2,1) = (R(1,1) + h*t)/2;
        for j = 2:i
            R(2,j) = R(2,j-1)+(R(2,j-1)-R(1,j-1))/(4^(j-1)-1);
        end
        for j = 1:i
            fprintf('R(2,%d): %3.19f\n',j, R(2,j));
            R(1,j) = R(2,j);
        end
        h = h/2;
    end
end