function LeastSquare_8_2_4e()
    func = {@(x) 1/2*cos(x) + 1/3*sin(2.*x), @(x) x.*(1/2*cos(x) + 1/3*sin(2.*x)), @(x) x.^2.*(1/2*cos(x) + 1/3*sin(2.*x))};
    xs = {@(x) 1+ 0.*x, @(x) x, @(x) x.^2, @(x) x.^3, @(x) x.^4};
    X = zeros(3,3);
    F = zeros(3,1);
    k = 0;
    for i = 1:3
        for j = 1:3
            X(i,j) = integral(xs{j+k}, -1,1);
        end
        F(i) = integral(func{i}, -1,1);
        k = k + 1;
    end
    disp(F\X);
end

