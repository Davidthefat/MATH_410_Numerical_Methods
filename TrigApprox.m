function TrigApprox()
n = 3;
f = @(x) exp(x);
fc = @(x) exp(x)*cos(k*x);
fs = @(x) exp(x)*sin(k*x);
a = @(k) 1/pi* quadgk(fc,-pi,pi);
b = @(k) 1/pi* quadgk(fs,-pi,pi);
disp(a(0));
end

