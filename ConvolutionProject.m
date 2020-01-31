clear all;
clc;

period = linspace(0, 2 * pi);
x = sin(period);
h = cos(period);
% x = input('enter the first sequence');
l1 = length(x);
% h = input('enter the first sequence');
l2 = length(h);

m = l1 + l2 -1;

% z = conv(x,h)
z1 = zeros(1,m);
% disp(z);
xnull = [x,zeros(1,l2-1)];
% disp(xnull);
hnull = [h,zeros(1,l1-1)];
% disp(hnull);
for i = 1:m
    for j = 1:i
        z1(i) = z1(i) + xnull(j) * hnull(i-j+1);
    end
end

subplot(3,1,1);
plot(x,'-g');
title('x');
subplot(3,1,2);
plot(h,'-b');
title('h');
subplot(3,1,3);
plot(z1,'-r');
title('Conv');