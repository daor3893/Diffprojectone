n=3;    
n1=eye()*2;
v1=zeros(n-1,1);
positions = 1:n-1;
v1(positions) = -1;
n2=diag(v1, 1);
n3=diag(v1,-1);
An=n1+n2+n3;
Sn=orthog3(An);
    u1 = Sn(:,1);
    u2 = Sn(:,2);
    u3 = Sn(:,3);
disp(dot(u1,u2))
disp(dot(u2,u3))
disp(dot(u3,u1))