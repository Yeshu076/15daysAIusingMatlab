clc;
clear;
a=linspace(0,6);
b=sin(a);
plot(a,b,'r','Linewidth',10);
xlabel('Xaxis');
ylabel('yaxis');
title('Title');
grid on;
hold on
c=cos(a);
plot(a,c,'g','Linewidth',5);
legend('sin','cos');
gtext('place anywhere');

