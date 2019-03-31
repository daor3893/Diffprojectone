function vprime = project_system_3_1_5(t, v)
    x1 = v(1);
    x2 = v(2);
    a = 1.5;
    b = 1.1;
    c = 2.5;
    d = 1.4;
    
    vprime = zeros(2, 1);
    
    vprime(1) = -a*x1+(b*x1.*x2);
    vprime(2) = c*x2-(d*x1.*x2);
end