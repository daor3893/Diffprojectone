% Eulers method with Harvest Factor, Section 2, Question 6
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
x4 = zeros(1,length(t1));
x4(1) = 0.1;
for n = 1:(length(t1)-1)
    x1(n+1) = x1(n) + h1*x_prime(t1(n),x1(n));
end
for n = 1:(length(t1)-1)
    x2(n+1) = x2(n) + h1*x_prime(t1(n),x2(n));
end
for n = 1:(length(t1)-1)
    x3(n+1) = x3(n) + h1*x_prime(t1(n),x3(n));
end
for n = 1:(length(t1)-1)
    x4(n+1) = x4(n) + h1*x_prime(t1(n),x4(n));
end
% dirfield.m
%{
function dirfield(f,tval,yval,plot_title)
[tm,ym]=meshgrid(tval,yval);
dt = tval(2) - tval(1); 
dy = yval(2) - yval(1);
fv = vectorize(f);
if isa(f,'function_handle')
  fv = eval(fv);
end
yp=feval(fv,tm,ym); 
s = 1./max(1/dt,abs(yp)./dy)*0.35;
h = ishold;
quiver(tval,yval,s,s.*yp,0,'.r'); hold on;
quiver(tval,yval,-s,-s.*yp,0,'.r');
if h
  hold on
else
  hold off
end
axis([tval(1)-dt/2,tval(end)+dt/2,yval(1)-dy/2,yval(end)+dy/2])

title(plot_title);
xlabel('t values');
ylabel('y values');
%}
f = @(t,x) (0.65*(1-(x./8.1)).*x)-(1.2*x.^2./(1+x.^2));
figure(1)
% Plot of direction field and solutions
hold on
plot(t1,x1,'LineWidth', 1)
plot(t1,x2,'LineWidth', 1)
plot(t1,x3,'LineWidth', 1)
plot(t1,x4,'LineWidth', 1)
% Function call for dirfield.m
dirfield(f,0:2:75, 0:0.2:10, 'Deer Pop. With Harvest')
xlabel('time'), ylabel('Population in dozens') 
legend('x_0 = 2', 'x_0 = 10', 'x_0 = 1.8', 'x_0 = 0.1')
hold off

