function OptimateIntegration()
%OPTIMATEINTEGRATION Summary of this function goes here
%   Detailed explanation goes here
    f1 = @(x) 1;
    f2 = @(x) x;
    f3 = @(x) x.^2;
    f = [[f1(0) f1(1) f1(2) 2],
        [f2(0) f2(1) f2(2) 2],
        [f3(0) f3(1) f3(2) 8/3]];
    disp(rref(f));
end

