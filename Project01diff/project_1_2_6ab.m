

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
x2 = zeros(1,length(t1));
x2(1) = 10;
x3 = zeros(1,length(t1));
x3(1) = 1.8;
for n = 1:(length(t1)-1)
    x1(n+1) = x1(n) + h1*x_prime(t1(n),x1(n));
end
for n = 1:(length(t1)-1)
    x2(n+1) = x2(n) + h1*x_prime(t1(n),x2(n));
end
for n = 1:(length(t1)-1)
    x3(n+1) = x3(n) + h1*x_prime(t1(n),x3(n));
end
f = @(t,x) (0.65*(1-(x./8.1)).*x)-(1.2*x.^2./(1+x.^2));
figure(1)
hold on
plot(t1,x1,'LineWidth', 1)
plot(t1,x2,'LineWidth', 1)
plot(t1,x3,'LineWidth', 1)

dirfield(f,0:1:75, 0:0.1:10, 'Deer Pop. With Harvest')
xlabel('time'), ylabel('Population in dozens') 

hold off

