
t = 0:0.01:2;
f = 5;
y1 = sin(2*3.1415*f*t)
subplot(2, 2, 1);
plot(t, y1);
title('Harmonic 1/ Galij/ 15');
xlabel('Time(s)');
ylabel('Amplitude');
grid on;

t = 0:0.01:2;
f = 5;
y2 = sin(12*3.1415* f * t)
subplot(2, 2, 2);
plot(t, y2);
title('Harmonic 2/ Galij/ 15');
xlabel('Time(s)');
ylabel('Amplitude');
grid on;


t = 0:0.01:2;
f = 5;
y3 = sin(12*3.1415*f*t)
subplot(2, 2, 3);
plot(t, y3);
title('Harmonic 3/ Galij/ 15');
xlabel('Time(s)');
ylabel('Amplitude');
grid on;

y = y1 + y2 + y3;
subplot(2, 2, 4);
plot(t, y);
title('Composite/ Galij/ 15');
xlabel('Time(s)');
ylabel('Amplitude');
grid on;