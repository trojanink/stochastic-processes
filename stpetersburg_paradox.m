%demonstration of st. petersburg paradox
clear all;

%how many games?
N=10000;

%how much you pay?
x=6.5;

for i=1:N
    %this game i
    revenue(i)=1;
    while(unifrnd(0,1)<0.5)
        revenue(i)=2*revenue(i);
    end
end

real_time_revenue=revenue-x;
plot(real_time_revenue);
figure
plot(cumsum(real_time_revenue))