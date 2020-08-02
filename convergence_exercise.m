%convergence_exercise.m
clear all;

%how many samples?
n=100;

omega=unifrnd(0,1,1,n);
U=omega./(1:n);
V=omega.*(1-1./(1:n));
W=omega.*exp(1:n);
Y=cos(2*pi*omega.*(1:n));
Z=exp(-(1:n).*((1:n).*omega-1));
plot(U)
figure
plot(V)
figure
plot(W)
figure
plot(Y)
figure
plot(Z)