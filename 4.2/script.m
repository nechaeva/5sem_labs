clear;
load('DATA.mat');
I = DATA(1,:);
n = DATA(2,:);
t=200;
fon=1.7297;
n1 = n-fon;
k=1013.5/3.49;
p=k*I;

U = 1./(abs(n1*200)).^(1/2);
U(3)=U(2);
U = U+1/sqrt(fon*200);

figure;
errorbar(p,n1,U);
xlabel 'p, кэВ/сек';
ylabel 'n, 1/сек';
grid;
axis([-200 1400 0 5.5]);

m = 9.1*10^(-31);
c = 3*10^8;
e = 1.6*10^(-19);

figure;
E = (((p*e*1000).^2+m^2*c^4).^(1/2)-m*c^2)*6.2*10^(18);
X =  abs((n1).^(1/2)./(p*e*1000/c).^(3/2));

U =(( ((p/c)*e*1000).^3*200*4 ).^(-1)).^(1/2);

errorbar(-E(13:27),X(13:27),U(13:27));
xlabel '-E, эВ';
ylabel 'n^{0.5}/p^{1.5}, сек/(эВ/Кл)^{1.5}';
grid;
hold on;

b = 1/(mean(E(13:21).^2)-(mean(E(13:21)))^2)* ( mean(E(13:21).*X(13:21))-mean(E(13:21))*mean(X(13:21)) );
a = mean(X(13:21))-b*mean(E(13:21));

E0=-a/b

plot(-[2:6]*10^5,[2:6]*10^5*b+a);

W = ((p/c)*e*1000).^3*200;
w = sum(W);
sigma2b = 1/(4 *((mean(E(13:21).^2)-(mean(E(13:21)))^2))*w );
sigmab = sqrt(sigma2b);
sigma2a = sigma2b*mean(E.^2);
sigmaa = sqrt(sigma2a);

sigma2E0 = E0^2*(sigma2a/(a^2)+sigma2b/(b^2));
sigmaE0 = sqrt(sigma2E0)
