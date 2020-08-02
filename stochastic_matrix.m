%stochastic_matrix.m
%We assume the following stochastic matrix for 1-hop transition
%probabilities
P=[0.9 0.1; 0.2 0.8]

%then we multiply
P2=P*P
P3=P2*P
P4=P3*P
P5=P4*P

P10=P^10

P100=P^100