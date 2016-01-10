function RungeKuttaSystem4(a, b, N)
h = (b-a)/N;
t = a;
disp(t);
f(1) = 2;
f(2) = 2;
function y = f1(t,u1,u2)
	y = u2;
end
function y = f2(t,u1,u2)
	y = -2*u1+3*u2+6*exp(-t);
end
for j = 1:2
	w(j) = f(j);
	disp(w(j));
end
for i = 1:N
	k(1,1) = h*f1(t,w(1),w(2));
	k(1,2) = h*f2(t,w(1),w(2));
	k(2,1) = h*f1(t+h/2, w(1)+0.5*k(1,1), w(2)+0.5*k(1,2));
	k(2,2) = h*f2(t+h/2, w(1)+0.5*k(1,1), w(2)+0.5*k(1,2));
	k(3,1) = h*f1(t+h/2, w(1)+0.5*k(2,1), w(2)+0.5*k(2,2));
	k(3,2) = h*f2(t+h/2, w(1)+0.5*k(2,1), w(2)+0.5*k(2,2));
	k(4,1) = h*f1(t+h/2, w(1)+0.5*k(3,1), w(2)+0.5*k(3,2));
	k(4,2) = h*f2(t+h/2, w(1)+0.5*k(3,1), w(2)+0.5*k(3,2));
	w(1) = w(1) + (k(1,1) + 2*k(2,1) + 2*k(3,1)+k(4,1))/6;
	w(2) = w(2) + (k(1,2) + 2*k(2,2) + 2*k(3,2)+k(4,2))/6;
	t=a+i*h;
	disp(t);
	disp(w(1));
	disp(w(2));
end

end
