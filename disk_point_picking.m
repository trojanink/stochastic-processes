%demonstrate disk point picking
clear all;

%how many points?
n=1000;
%radius
r=1;
%plot offset
offset=0.2;

%the rejection method
for i=1:n
    X(i)=2*r;
    Y(i)=2*r;
    %do until happy
    while(X(i)^2+Y(i)^2>r^2)
        %draw a random point in the square [-r,r]x[-r,r]
        X(i)=unifrnd(-r,r);
        Y(i)=unifrnd(-r,r);
    end
end
figure
hold
t=(0:100)*2*pi/100;
plot(r*cos(t), r*sin(t),'--');
scatter(X,Y,'b','filled')
title('rejection rule');
axis([-r-offset r+offset -r-offset r+offset])
hold

%the erroneous uniform angle, uniform radius
R=unifrnd(0,r,n,1);
THETA=unifrnd(0,2*pi,n,1);
X=R.*cos(THETA);
Y=R.*sin(THETA);
figure
hold
t=(0:100)*2*pi/100;
plot(r*cos(t), r*sin(t),'--');
scatter(X,Y,'b','filled')
title('uniform R');
axis([-r-offset r+offset -r-offset r+offset])
hold


%the correct transformation
X=sqrt(R).*cos(THETA);
Y=sqrt(R).*sin(THETA);
figure
hold
t=(0:100)*2*pi/100;
plot(r*cos(t), r*sin(t),'--');
scatter(X,Y,'b','filled')
title('sqrt R');
axis([-r-offset r+offset -r-offset r+offset])
hold
