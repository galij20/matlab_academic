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

subplot(3, 1, 1);
plot(t, m);
xlabel('time');
ylabel('Amplitude');
title('Modulating Signal/ Galij/ 15');
grid on;

subplot(3, 1, 2);
plot(t, c);
xlabel('time');
ylabel('Amplitude');
title('Carrier Signal/ Galij/ 15');
grid on;

B = 18;
s = Ac * cos((2 * pi * fc * t)  + B * sin(2 * pi* fm * t));
subplot(3, 1, 3);
plot(t, s);
xlabel('time');
ylabel('amplitude');
title('Frequency modulation signal/ Galij/ 15');
grid on;
