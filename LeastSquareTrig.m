function LeastSquareTrig()
	x = [-pi, -3*pi/4, -2*pi/4, -pi/4, 0, pi/4, 2*pi/4, 3*pi/4, pi];
	y = [0.0432139,0,-0.20788,0,1,0,-4.81048,0,23.1407];
	for i = 0:3
		a(i+1) = 0;
		b(i+1) = 0;
		for j = 1:2*4
		a(i+1) = a(i+1) + y(j)*cos(i*x(j));
		b(i+1) = b(i+1) + y(j)*sin(i*x(j));
		
		end
		a(i+1) = a(i+1)/4;
		b(i+1) = b(i+1)/4;
	end
	disp(a);
	disp(b);
end
