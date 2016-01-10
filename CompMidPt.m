function CompMidPt(a,b,n)
%COMPMIDPT Summary of this function goes here
%   Detailed explanation goes here
f = @(x) x^2*exp(-x.^2);
h = (b-a)/(n+2);
sum = 0;
for i = 0:n/2
   xi = a+(2*i+1)*h;
   sum = sum+f(xi);
end
e = 0.4227250564924766596900224966837857764001138178808026 - sum;
fprintf('X: %3.9f\n',sum);
fprintf('Error: %3.9f\n',e);
end

