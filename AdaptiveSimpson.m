function AdaptiveSimpson(a, b, e, n)
%     function y = f(x)
%         y = x^2*log(x);
%     end
    function y = f(x)
        y = sin(1/x);
    end
    I = 0;
    i = 1;
    e(i) = 10*e;
    a(i) = a;
    h(i) = (b-a)/2;
    FA(i) = f(a);
    FC(i) = f(a+h(i));
    FB(i) = f(b);
    S(i) = h(i)*(FA(i)+4*FC(i)+FB(i))/3;
    L(i) = 1;
    while i > 0
        FD = f(a(i) + h(i)/2);
        FE = f(a(i) + 3*h(i)/2);
        S1 = h(i)*(FA(i)+4*FD+FC(i))/6;
        S2 = h(i)*(FC(i)+4*FE+FB(i))/6;
        v(1) = a(i);
        v(2) = FA(i);
        v(3) = FC(i);
        v(4) = FB(i);
        v(5) = h(i);
        v(6) = e(i);
        v(7) = S(i);
        v(8) = L(i);
        i = i - 1;
        if abs(S1 + S2 - v(7)) < v(6)
            I = I + S1 + S2;
        else
            if v(8) >= n
                disp('Level Exceeded');
            else
                i = i+1;
                a(i) = v(1) + v(5);
                FA(i) = v(3);
                FC(i) = FE;
                FB(i) = v(4);
                h(i) = v(5)/2;
                e(i) = v(6)/2;
                S(i) = S2;
                L(i) = v(8) + 1;
                i = i + 1;
                a(i) = v(1);
                FA(i) = v(2);
                FC(i) = FD;
                FB(i) = v(3);
                h(i) = h(i-1);
                e(i) = e(i-1);
                S(i) = S1;
                L(i) = L(i-1);
            end
        end 
    end
    fprintf('I: %3.19f\n',I);
    si = zeros(1,10000);
    t = linspace(0.1,2,10000);
    for i = 1:10000
       si(i) = f(t(i)); 
    end
    figure;
    plot(t,si);
%     function si = simp(a,b)
%         si = (b-a)/6*(f(a) + 4*f((a+b)/2)+f(b));
%     end
%     fprintf('S1: %3.19f\n',simp(a,b));
%     fprintf('S2: %3.19f\n',simp(a,(a+b)/2));
%     fprintf('S3: %3.19f\n',simp((a+b)/2,b));
end

