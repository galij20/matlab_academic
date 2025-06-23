clc;
clear all;
close all; 

fs = 8000;
fm = 20;
fc = 500;
Am = 1;
Ac = 1;
t = [0: 0.1*fs]/fs;
m = Am * cos(2 * pi * fm * t);
c = Ac * cos(2 * pi * fc * t);
a = Am / Ac;
s1 = Ac * [ 1 + a * cos(2 * pi * fm * t)].* cos(2 * pi * fc * t);

subplot(3, 3, 1:3);
plot(t, m);
xlabel('time');
ylabel('Amplitude');
title('Modulating Signal/ Galij/ 15');
grid on;

subplot(3, 3, 4:6);
plot(t, c);
xlabel('time');
ylabel('Amplitude');
title('Carrier Signal/ Galij/ 15');
grid on;

subplot(3, 3, 7);
plot(t, s1);
xlabel('time');
ylabel('Amplitude');
title('Perfect Modulated Signal/ Galij/ 15');
grid on;

Am = 3;
Ac = 1;
a = Am/ Ac;
s2 = Ac * [ 1 + a * cos(2 * pi * fm * t)].* cos(2 * pi * fc * t);

subplot(3, 3, 8);
plot(t, s2);
xlabel('time');
ylabel('amplitude');
title('Over Modulated Signal/ Galij/ 15');
grid on;

Am = 1;
Ac = 2;
a = Am/ Ac;
s3 = Ac * [ 1 + a * cos(2 * pi * fm * t)].* cos(2 * pi * fc * t);
subplot(3, 3, 9);
plot(t, s3);
xlabel('time');
ylabel('Amplitude');
title('Under Modulated Signal/ Galij/ 15');
grid on;