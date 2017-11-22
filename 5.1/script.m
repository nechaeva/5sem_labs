clear;
load('Pb.mat');
load('Fe.mat');
load('Al.mat');
load('N0.mat');

fon=(3592+3412+3661)/2;

nPb=zeros(1,10);
nFe=zeros(1,10);
nAl=zeros(1,10);
lPb=zeros(1,10);
lFe=zeros(1,10);
lAl=zeros(1,10);

n=0;
for n=1:10
    nPb(1,n)=Pb(2,n)/Pb(3,n)-fon/300;
    nFe(1,n)=Fe(2,n)/Fe(3,n)-fon/300;
    nAl(1,n)=Al(2,n)/Al(3,n)-fon/300;
    lPb(1,n)=Pb(1,n);
    lFe(1,n)=Fe(1,n);
    lAl(1,n)=Al(1,n);
end

n0=mean(N0)/10;

n1Pb=log(n0./nPb);
n1Fe=log(n0./nFe);
n1Al=log(n0./nAl);

figure;
plot(lPb,n1Pb,'r.');
hold on;
plot([0:5],1.485*[0:5],'b');
plot([0:5],(1.485-0.012)*[0:5],'b--');
plot([0:5],(1.485+0.012)*[0:5],'b--');
grid;
xlabel 'l, см';
ylabel 'ln(n0/n)';
title 'образец: свинец';

figure;
plot(lFe,n1Fe,'r.');
hold on;
plot([0:12],0.680*[0:12],'b');
plot([0:12],(0.680-0.013)*[0:12],'b--');
plot([0:12],(0.680+0.013)*[0:12],'b--');
grid;
xlabel 'l, см';
ylabel 'ln(n0/n)';
title 'образец: железо';

figure;
plot(lAl,n1Al,'r.');
hold on;
plot([0:25],0.245*[0:25],'b');
plot([0:25],(0.245-0.002)*[0:25],'b--');
plot([0:25],(0.245+0.002)*[0:25],'b--');
grid;
xlabel 'l, см';
ylabel 'ln(n0/n)';
title 'образец: аллюминий';
