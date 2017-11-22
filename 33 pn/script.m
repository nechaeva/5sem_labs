clear;

load('data1.mat');
load('data2.mat');
load('data3.mat');

U1 = data1(:,1);
I1 = data1(:,2);

U2 = data2(:,1);
I2 = data2(:,2);

U3 = data3(:,1);
I3 = data3(:,2);

figure;
plot(U1,I1,'.');
hold on;
plot([48.5 48.5], [0 100],'k--');
plot([93 93], [0 100],'k--');
plot([0 900], [9.7 9.7],'k--');
grid;
axis([0 900 0 60]);
title 'I-V curve (Temp = 297 K)';
xlabel 'V, volts';
ylabel 'I, amperes';

figure;
plot(U2,I2,'.');
hold on;
plot([64.5 64.5], [0 100],'k--');
plot([92 92], [0 100],'k--');
plot([0 900], [10.4 10.4],'k--');
grid;
axis([0 900 0 60]);
title 'I-V curve (Temp = 86 K)';
xlabel 'V, volts';
ylabel 'I, amperes';

figure;
plot(U3,I3,'.');
hold on;
plot([59 59], [0 100],'k--');
plot([107 107], [0 100],'k--');
plot([0 900], [10.85 10.85],'k--');
grid;
axis([0 900 0 60]);
title 'I-V curve (Temp = 130 K)';
xlabel 'V, volts';
ylabel 'I, amperes';