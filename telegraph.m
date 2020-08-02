%random telegraph signal
clear all;
close all;

%time interval to look at
time_horizon=20;
%accuracy of x axis
accuracy=10000;
%time
t=linspace(0,time_horizon,accuracy);
%poisson intensity
lambda=1;
%draw one poisson variable
N=poissrnd(time_horizon*lambda)
%construct the process sample
Nt=unifrnd(0,time_horizon,1,N);
Nt=sort(Nt);
%
%
%
%build the poisson shots
for i=1:N
   X1mat(:,i)=abs(t-Nt(i))<(time_horizon/accuracy/2);
   X1=sum(X1mat,2);
end
stem(t,X1)
%build the counting process
X2(1)=0;
for k=1:accuracy
   X2(k+1)=X2(k)+X1(k);
end
figure
plot(t,X2(2:accuracy+1))
%build the random telegraph signal
X3(1)=1-2*binornd(1,0.5);
for k=1:accuracy
   if(X1(k)==0)
      X3(k+1)=X3(k);
   else
      X3(k+1)=-X3(k);
   end
end
figure
plot(t,X3(2:accuracy+1))


