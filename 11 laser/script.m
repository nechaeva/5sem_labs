clear
data05 = load('5.txt');
data15 = load('15.txt');
data25 = load('25.txt');
data35 = load('35.txt');
data45 = load('45.txt');
data55 = load('55.txt');
data65 = load('65.txt');
data70 = load('70.txt');

I05 = data05(:,1);
S05 = data05(:,2)*10;
I15 = data15(:,1);
S15 = data15(:,2)*10;
I25 = data25(:,1);
S25 = data25(:,2)*10;
I35 = data35(:,1);
S35 = data35(:,2)*10;
I45 = data45(:,1);
S45 = data45(:,2)*10;
I55 = data55(:,1);
S55 = data55(:,2)*10;
I65 = data65(:,1);
S65 = data65(:,2)*10;
I70 = data70(:,1);
S70 = data70(:,2)*10;

figure;
plot(I05,S05,'k.');
hold on
plot([-0.5 40],0.2777.*[-0.5 40]-2.123);
grid;
axis([-0.5 40 -0.5 8]);
xlabel 'I, мА';
ylabel 'S, ~V';
title 'ВАХ диодного лазера при T=5 °C';

figure;
plot(I15,S15,'k.');
hold on
plot([-0.5 40],0.2609.*[-0.5 40]-2.605);
grid;
axis([-0.5 40 -0.5 7]);
xlabel 'I, мА';
ylabel 'S, ~V';
title 'ВАХ диодного лазера при T=15 °C';

figure;
plot(I25,S25,'k.');
hold on
plot([-0.5 40],0.2478.*[-0.5 40]-3.277);
grid;
axis([-0.5 40 -0.5 6]);
xlabel 'I, мА';
ylabel 'S, ~V';
title 'ВАХ диодного лазера при T=25 °C';

figure;
plot(I35,S35,'k.');
hold on
plot([-0.5 40],0.2237.*[-0.5 40]-4.003);
grid;
axis([-0.5 40 -0.5 5]);
xlabel 'I, мА';
ylabel 'S, ~V';
title 'ВАХ диодного лазера при T=35 °C';

figure;
plot(I45,S45,'k.');
hold on
plot([-0.5 40],0.207.*[-0.5 40]-5.133);
grid;
axis([-0.5 40 -0.5 3]);
xlabel 'I, мА';
ylabel 'S, ~V';
title 'ВАХ диодного лазера при T=45 °C';

figure;
plot(I55,S55,'k.');
hold on
plot([-0.5 60],0.1735.*[-0.5 60]-6.142);
grid;
axis([-0.5 60 -0.5 4]);
xlabel 'I, мА';
ylabel 'S, ~V';
title 'ВАХ диодного лазера при T=55 °C';

figure;
plot(I65,S65,'k.');
hold on
plot([-0.5 90],0.1302.*[-0.5 90]-7.089);
grid;
axis([-0.5 90 -0.5 4]);
xlabel 'I, мА';
ylabel 'S, ~V';
title 'ВАХ диодного лазера при T=65 °C';

figure;
plot(I70,S70,'k.');
hold on
plot([-0.5 100],0.09264.*[-0.5 100]-6.731);
grid;
axis([-0.5 100 -0.5 2]);
xlabel 'I, мА';
ylabel 'S, ~V';
title 'ВАХ диодного лазера при T=70 °C';

T = [5 15 25 35 45 55 65 70];
I = [2.123/0.2777 2.605/0.2609 3.277/0.2478 4.003/0.2237 5.133/0.207 6.142/0.1735 7.089/0.1302 6.731/0.09264];
n = [0.2777 0.2609 0.2478 0.2237 0.207 0.1735 0.1302 0.09264];

figure;
plot(T,I,'k.');
hold on;
plot([0:5:75],4.297.*exp(0.03976*[0:5:75]));
grid;
axis([0 75 -5 80]);
xlabel 'T, °C';
ylabel 'I_{пор}, мА';
title 'Зависимость порогового тока от температуры (T_0=25.15 °C)';

figure;
plot(T,n,'k.');
hold on;
plot([0:5:90],-0.0007098.*exp([0:5:90].*0.07058)+0.2871.*exp([0:5:90].*(-0.005702)));
grid;
axis([0 90 0 0.3]);
xlabel 'T, °C';
ylabel 'n';
title 'Зависимость дифф. кватновой эффективности от температуры (T_{кр}=78.5 °C)';