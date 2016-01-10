function Hermite()
x = [0.5, 0.6]
n = 1;
    function y = f(x)
        y = (2*x+1)/(x^2+1);
    end
    function y = fp(x)
        y = -2*(x^2+x-1)/(x^2+1)^2;
    end
    for i = 0:n
        z(2*(i+1)) = x(i+1);
        z(2*(i+1)+1) = x(i+1);
        Q(2*(i+1), 1) = f(x(i+1));
        Q(2*(i+1)+1, 1) = f(x(i+1));
        Q(2*(i+1)+1, 2) = fp(x(i+1));
        if i~=1
            Q(2*(i+1),2) = (Q(2*(i+1), 1)-Q(2*(i+1)-1, 1))/(z(2*(i+1))-z(2*(i+1)-1));
        end
    end
    for i = 2:2*n+1
        for j = 2:i
            Q((i+1),j+1) = (Q((i+1), j)-Q(i, j))/(z(i+1)-z(i-j+1));
        end
        
    end
    disp(Q);
end