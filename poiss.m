%non-homogeneous spatial poisson
clear all;

N1=poissrnd(1)
N2=poissrnd(10)
N3=poissrnd(100)
N4=poissrnd(1000)

X1=unifrnd(0,1,1,N1);
Y1=unifrnd(0,1,1,N1);
X2=unifrnd(-1,0,1,N2);
Y2=unifrnd(-0,1,1,N2);
X3=unifrnd(-1,0,1,N3);
Y3=unifrnd(-1,0,1,N3);
X4=unifrnd(0,1,1,N4);
Y4=unifrnd(-1,0,1,N4);

figure
hold
scatter(X1,Y1,'filled');
scatter(X2,Y2,'r','filled');
scatter(X3,Y3,'k','filled');
scatter(X4,Y4,'g','filled');
hold