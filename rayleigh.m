%demonstrating rayleigh distribution 
clear all;

%give size
n=50000;
%scatter size m>n
m=1000;
%give bin number
bins=100;
%give variance
sigma=1;

%generate X and Y vector coordinates
X=normrnd(0,sigma,n,1);
Y=normrnd(0,sigma,n,1);
%demonstrate histograms
hist(X,bins)
figure
hist(sqrt(X.^2+Y.^2),bins)

%show dart diagram
figure
scatter(X(1:m),Y(1:m),'x')

