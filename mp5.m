%Range

n = (0:199);
x = (sin((3*pi.*n)/100));
y = zeros(size(x));

%Values of 'y'

for i = 1:length(n)
    if n(i) == 0
        y(i) = -1.5*x(i) + 2*x(i + 1) - 0.5*x(i + 2);
        
    elseif n(i) < 199
        y(i) = 0.5*x(i + 1) - 0.5*x(i - 1);
    else
        y(i) = 1.5*x(i) - 2*x(i - 1) + 0.5*x(i - 2);
    end
end

%%Plot

plot(n,x,'k');
hold on;

plot(n,y,'r--');
hold off;

legend('x','y');
xlabel('n');
title('Plot of x and y v/s n');

