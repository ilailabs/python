A = [2 -2 2 1;2 -4 1 3; -1 3 -4 2; 2 4 3 -2];

%step1%
j=1;
i=2;
R = A(1,:)
R=R - (A(i,1)/A(1,1))*R;