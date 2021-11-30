% Function parameters
q0 = 10;
R = 60;
L = 9;
C = 0.00005;

% Use linspace to create an array of 100 points between 0 and 0.8
t = linspace(0,0.8,100);

% Calculate the values of q
q = q0 .* exp((-R.*t)/(2*L)) .* cos(sqrt(1/(L*C)-((R/(2*L))^2)).*t);

% Plot q vs t
subplot (2,1,1), plot(t,q)
title('Charge vs Time for Simple Electric Circuit')
xlabel('Time')
ylabel('Charge')
% Make the capacitor 10x bigger
q2 = q0 .* exp((-R.*t)/(2*L)) .* cos(sqrt(1/(L*(C*10))-((R/(2*L))^2)).*t);

% Plot q2 vs t
subplot(2,1,2), plot(t,q2)
title('Charge vs Time for Capacitor 10 times Larger')
xlabel('Time')
ylabel('Charge')