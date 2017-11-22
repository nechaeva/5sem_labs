clear;

lambda = [5852 5401 5945 6096 6217 6334 6507 6599 6717];
a = [2080 1819 2126 2196 2246 2296 2359 2390 2432];


k = ( mean(lambda.*a) - mean(lambda)*mean(a) ) / ( mean(lambda.^2) - (mean(lambda))^2 );
m = mean(a) - k*mean(lambda);

sigmak2 = 1/(9-2)*( ( mean(a.^2) - (mean(a))^2 )/(  mean(lambda.^2) - (mean(lambda))^2 ) - k^2 );
sigmam2 = sigmak2*mean(lambda.^2);

sigmak = sqrt(sigmak2);
sigmam = sqrt(sigmam2);

figure;
plot(lambda,a,'*');
hold on
plot(lambda,lambda*k+m);
axis([5350 6800 1800 2500]);
grid;
xlabel 'lambda, angstrom';
ylabel 'a, ^o';

I1 = [0.158 0.141 0.117 0.040 0.016 0.012 0.009 0.007 0.005 0.001];
U1 = [0.31 0.259 0.256 -0.012 -0.093 -0.110 -0.125 -0.132 -0.14 -0.152];
a1 = 2350;
I01 = I1.^(0.5);


k1 = ( mean(I01.*U1) - mean(I01)*mean(U1) ) / ( mean(U1.^2) - (mean(U1))^2 );
m1 = mean(I01) - k1*mean(U1);

sigmak12 = 1/(7-2)*( ( mean(I01.^2) - (mean(I01))^2 )/(  mean(U1.^2) - (mean(U1))^2 ) - k1^2 );
sigmam12 = sigmak12*mean(U1.^2);

sigmak1 = sqrt(sigmak12);
sigmam1 = sqrt(sigmam12);

figure;
plot(U1,I01,'*');
hold on
plot(U1,U1*k1+m1);
grid;
xlabel 'U, volts';
ylabel 'I, volts^{0.5}';
title '6490 angstrom';

%I2 = [0.246 0.07];
%U2 = [5.16 5.040];
%a2 = 2700;
%figure;
%plot(I2.^(0.5),U2);

I3 = [0.237 0.143 0.117 0.109];
U3 = [0.664 0.371 0.288 0.250];
a3 = 2480;
I03 = I3.^(0.5);


k3 = ( mean(I03.*U3) - mean(I03)*mean(U3) ) / ( mean(U3.^2) - (mean(U3))^2 );
m3 = mean(I03) - k3*mean(U3);

sigmak32 = 1/(4-2)*( ( mean(I03.^2) - (mean(I03))^2 )/(  mean(U3.^2) - (mean(U3))^2 ) - k3^2 );
sigmam32 = sigmak32*mean(U3.^2);

sigmak3 = sqrt(sigmak32);
sigmam3 = sqrt(sigmam32);

figure;
plot(U3,I03,'*');
hold on
plot(U3,U3*k3+m3);
grid;
xlabel 'U, volts';
ylabel 'I, volts^{0.5}';
title '6764.1 angstrom';

I4 = [0.436 0.251 0.127 0.030];
U4 = [4.762 4.533 4.392 4.284];
a4 = 2550;
I04 = I4.^(0.5);


k4 = ( mean(I04.*U4) - mean(I04)*mean(U4) ) / ( mean(U4.^2) - (mean(U4))^2 );
m4 = mean(I04) - k4*mean(U4);

sigmak42 = 1/(4-2)*( ( mean(I04.^2) - (mean(I04))^2 )/(  mean(U4.^2) - (mean(U4))^2 ) - k4^2 );
sigmam42 = sigmak42*mean(U4.^2);

sigmak4 = sqrt(sigmak42);
sigmam4 = sqrt(sigmam42);

figure;
plot(U4,I04,'*');
hold on
plot(U4,U4*k4+m4);
grid;
xlabel 'U, volts';
ylabel 'I, volts^{0.5}';
title '6917.6 angstrom';


a0 = [a1, a3];
lambda0 = [6490, 6764.1];
w0 = 2*3.14*3*10^8./(lambda0*10^(-10));
U0 = [-0.273/k1, -m3/k3];
figure;
plot(w0,U0,'*');
hold on
grid;
xlabel 'w';
ylabel 'U0, volts';
title 'U0(w)';
plot(w0,U0);