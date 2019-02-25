a = 1.5;
b = 1.1;
c = 2.5;
d = 1.4;
hold on
xline(a/b, 'r', 'LineWidth', 2)
xline(0, 'r', 'LineWidth', 2)
yline(c/d, 'black', 'LineWidth', 2)
yline(0, 'black', 'LineWidth', 2)
plot(0,c/d, 'g.', 'MarkerSize', 20);
plot(a/b,0, 'g.', 'MarkerSize', 20);
plot(a/b,c/d, 'g.', 'MarkerSize', 20);
plot(0,0, 'g.', 'MarkerSize', 20);
hold off