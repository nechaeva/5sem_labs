clear;
DATA = [0.1 0.456 4.117 2.928 62.03 0.171 0.397 6.055
0.2 0.329 1.409 1.149 10.68 0.137 0.291 1.196
0.3 0.281 1.000 0.787 4.275 0.119 0.251 0.602
0.4 0.250 0.839 0.740 2.495 0.106 0.224 0.428
0.5 0.228 0.745 0.661 1.724 0.0966 0.204 0.343
0.6 0.210 0.679 0.605 1.349 0.0896 0.189 0.298
0.8 0.184 0.588 0.526 0.982 0.0786 0.166 0.246
1.0 0.166 0.526 0.471 0.798 0.0706 0.149 0.214
1.5 0.135 0.430 0.382 0.581 0.0575 0.121 0.172
2.0 0.117 0.377 0.337 0.518 0.0493 0.105 0.152
5.0 0.076 0.285 0.246 0.483 0.0301 0.067 0.127];

E = DATA(:,1);
Pb = DATA(:,5);
Fe = DATA(:,4);
Al = DATA(:,2);

%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( E, Al );

% Set up fittype and options.
ft = 'linearinterp';

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, 'Normalize', 'on' );

% Plot fit with data.
figure;
h1 = plot( fitresult, xData, yData );
% Label axes
xlabel E
grid on

hold on;



%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( E, Fe );

% Set up fittype and options.
ft = 'linearinterp';

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, 'Normalize', 'on' );

% Plot fit with data.
h2 = plot( fitresult, xData, yData );
% Label axes

%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( E, Pb );

% Set up fittype and options.
ft = 'linearinterp';

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, 'Normalize', 'on' );

% Plot fit with data.
h3 = plot( fitresult, xData, yData );
% Label axes

plot([0 1],[1.485-0.012 1.485-0.012]);
plot([0 1],[1.485+0.012 1.485+0.012]);

plot([0 1],[0.68-0.013 0.68-0.013]);
plot([0 1],[0.68+0.013 0.68+0.013]);

plot([0 1],[0.245-0.002 0.245-0.002]);
plot([0 1],[0.245+0.002 0.245+0.002]);
axis([0 1 0 1.6])
