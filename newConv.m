clear all;
clc;

% All rights resrved
% ---- Signal and Systems ----
% ---- Pooya Jamshidi ----
% ---- This code is written for project of Signal and System lecture in Ilam university. ----

% intialazing The period.
period = linspace(0, 4 * pi);

x = sin(period);
h = cos(period);
hi = cos(-period);

result = zeros(1, length(x) + length(h) - 1);

hx = animatedline;


subplot(3,1,1);
plot(x,'-g');
title('x');
subplot(3,1,2);
plot(hi,'-b');
title('h');


count = 0;
for i = 1 : length(h)
    temp = x .* h(1, i);
    result(1,1+count:length(x)+count) = result(1,1+count:length(x)+count) + temp;
    count = count + 1;
    
    subplot(3,1,3);
    plot(result,'-r');
    title('Convoluted');
    addpoints(hx,period(i),result(i));
    drawnow;
    pause(0.1);
end



