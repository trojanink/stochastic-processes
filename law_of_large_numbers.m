%demonstration of the law of large numbers
clear all;

%how many samples?
n=1000;

%assume a random variable with mean mu and finite variance
mu=10;
sigma=100;

%draw n samples
Xn=normrnd(mu,sigma,n,1);

%plot the sample mean as a function of samples
figure
hold
plot(ones(n,1)*mu,'r')
plot(cumsum(Xn)./(1:n)')
hold