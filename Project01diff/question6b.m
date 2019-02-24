% 6b) 
r = .65;
L = 8.1;
p = 1.2;
q = 1;
h = @(x) p*x.^2./(q+x.^2);
x_prime = @(t,x) r*x.*(1-x/L)-h(x);
h1 = .01;
t1 = 0:h1:75;
x1 = zeros(1,length(t1));
x1(1) = 2;
for n = 1:(length(t1)-1)
    x1(n+1) = x1(n) + h1*x_prime(t1(n),x1(n));
end

plot(t1,x1)
xlabel('time'), ylabel('amount in dozens'), title("Population of Deer") 
