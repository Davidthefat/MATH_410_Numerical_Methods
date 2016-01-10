function Divided_Differences()

x = [0.0, 0.1, 0.3, 0.6, 1.0, 1.1];
n = 6;
f = ones(n);
f(1,1) = -6.0;
f(2,1) = -5.89483;
f(3,1) = -5.56014;
f(4,1) = -5.17788;
f(5,1) = -4.28172;
f(6,1) = -3.99583;
for i = 2:n
   for j = 2:i
      f(i,j) = (f(i,j-1)-f(i-1,j-1))/(x(i)-x(j-1));
   end
end
for i = 1:n
   fprintf('%6.16f\n',f(i,i)); 
end
end