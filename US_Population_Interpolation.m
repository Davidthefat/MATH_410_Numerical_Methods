function US_Population_Interpolation(z)
%US_POPULATION_INTERPOLATION 
year = [1940, 1950, 1960, 1970, 1980, 1990];
pop = [132165, 151326, 179323, 203302, 226542, 249633];
n = 5;
L = ones(1,n);
p = 0;
for k = 1:n
   for i = 1:n
      if i ~= k
          L(k)=L(k)*(z-year(i))/(year(k)-year(i));
      end
   end
end
for i = 1:n
    p = p + pop(i)*L(i);
end
fprintf('%6.16f\n',p);
end

