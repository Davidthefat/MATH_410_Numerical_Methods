function Barycentric( )
%BARYCENTRIC Interpolates a function using the Barycentric method.
n = 4;
x = [8.1,8.3,8.6,8.7];
y = [16.94410, 17.56492, 18.50515, 18.82091];
w = zeros(1,n);
z = 8.4; %z is the value at which the interpolation is evaluated.
num = 0;
den = 0;
for i = 1:n                             
    t = 1; %Declare to 1 to avoid divide by 0, holds product in denominator
    for k = 1:n
        if k ~= i
            t = t * (x(i)-x(k)); %Do product operation.
        end
    end
    w(i) = 1/t;
end
for k = 1:n
        num = num + w(k)*y(k)/(z-x(k));
        den = den + w(k)/(z-x(k));
end
p = num/den;
disp(p);
end