function NumDiffErrorAnal(n)
%NUMDIFFERRORANAL Summary of this function goes here
%   Detailed explanation goes here
x = linspace(0.8,1.2,3);
h = linspace(0.0001,0.1,n);
d = cos(x);
dd = zeros(1,n);
for j = 1:length(x)
for i = 1:n
    dd(i) = (sin(x(j) + h(i)) - sin(x(j)))/h(i);
    fprintf('h: %3.9f\t',h(i));
    fprintf('x: %3.9f\t',x(j));
    fprintf('f`: %3.9f\t',d(j));
    fprintf('approx f`: %3.9f\t',dd(i));
    fprintf('Error: %3.9f\n',(d(j) - dd(i)));
    
end
figure;
    plot(h,(d(j) - dd));
end
end

