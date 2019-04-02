function [An] = formAn(n)

    n1=eye(n)*2;
    v1=zeros(n-1,1);
    positions = 1:n-1;
    v1(positions) = -1;
    n2=diag(v1, 1);
    n3=diag(v1,-1);
    An=n1+n2+n3;
    An=An*(n+1)^2;
end
