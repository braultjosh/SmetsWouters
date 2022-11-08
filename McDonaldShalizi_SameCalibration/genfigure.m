clear; clc;
data = readtable('McDonaldShalizi_SimulatedOutput_R.csv');


figure(1);
subplot(2,1,1)
plot(table2array(data(11:1010,5)), 'Color', 'k'); hold on; grid on;
title('McDonald-Shalizi dY'); ylim([-4 4])
subplot(2,1,2)
plot(table2array(data(11:1010,18)), 'Color', 'k'); hold on; grid on;
title('Smets-Wouters DYNARE dY'); ylim([-4 4])