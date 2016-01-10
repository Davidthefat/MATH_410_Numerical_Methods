function Laguerre()
w = @(x) exp(-x);
disp(quadgk(w, 0, inf));
phi{1} = @(x) 1 + x .*0;
B(2) = quadgk(@(x) x .* w(x) .* phi{1}(x).^2, 0, inf)/quadgk(@(x) w(x) .* phi{1}(x).^2, 0, inf);
phi{2} = @(x) x-B(2);
for i = 3:4
    B(i) = quadgk(@(x) x .* w(x) .* phi{i-1}(x).^2, 0, inf)/quadgk(@(x) w(x) .* phi{i-1}(x).^2, 0, inf);
    C(i) = quadgk(@(x) x .* w(x) .* phi{i-1}(x).* phi{i-2}(x), 0, inf)/quadgk(@(x) w(x) .* phi{i-2}(x).^2, 0, inf);
    phi{i} = @(x) (x-B(i)).*phi{i-1}(x)-C(i)*(phi{i-2}(x));
end
for i = 1:4
    disp(func2str(phi{i}));
end
end

