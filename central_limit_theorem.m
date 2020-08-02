%demonstration for convergence in characteristic function of a large sum to normal
%distribution (Central limit theorem)
clear all;

%number of retrials
N=6;

%number of samples
n=1000000;

%number of bins for the histogram
bins=100;


%choose a distribution
M=unifrnd(0,1,n,N);

for i=1:N
    figure
    hist(sum(M(:,1:i),2),bins)
end
figure
hist(normrnd(0.5*N,1/3*sqrt(N),n,1),bins)
