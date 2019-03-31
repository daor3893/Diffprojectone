%%
% Euler approximation code for Section 2, Question 3 a
x_prime = @(t,x) .65*x.*(1-x/5.4);
h1 = .5;
h2 = .1;
h3 = .01;
t1 = 0:h1:25;
t2 = 0:h2:25;
t3 = 0:h3:25;
x1 = zeros(1,length(t1));
x1(1) = .5;
x2 = zeros(1,length(t2));
x2(1) = .5;
x3 = zeros(1,length(t3));
x3(1) = .5;
for n = 1:(length(t1)-1)
    x1(n+1) = x1(n) + h1*x_prime(t1(n),x1(n));
end
for n = 1:(length(t2)-1)
    x2(n+1) = x2(n) + h2*x_prime(t3(n),x2(n));
end
for n = 1:(length(t3)-1)
    x3(n+1) = x3(n) + h3*x_prime(t3(n),x3(n));
end
xo = .5;
r = .65;
lm = 5.4;
t = 0:.01:25;
x = (xo*exp(r*t)*lm)./(lm-xo+(xo*exp(r*t)));

figure(1)
hold on
plot(t1,x1,'LineWidth', .3)
plot(t2,x2,'LineWidth', .4)
plot(t3,x3,'LineWidth', .7)
plot(t,x,'LineWidth', 1) 
xlabel('time'), ylabel('x(amount in dozens)'), title("Population of Mountain Lions") 
legend("h = 0.5","h = 0.1","h = 0.01","true")
axis([0 12 .5 5.5])

hold off
%%
% Error in Eulers method for Section 2, Question 3 b
e1 = abs(x(1:51)-x1);
e2 = abs((x(1:251)-x2));
e3 = abs((x-x3));
figure(2)
hold on 
semilogy(t1,e1,t2,e2,t3,e3)
xlabel('time'), ylabel('Abs. Error'), title("Error in Population curves") 
legend("h = 0.5","h = 0.1","h = 0.01")
hold off
%%
% Plotting the Harvest Factor
p = 1.2;
q = 1;
xxx = 0:.01:50;
figure(3)
hx = p*xxx.^2./(q+xxx.^2);
plot(xxx,hx);
xlabel('x'), ylabel('Harvest'), title("Harvesting Factor") 


