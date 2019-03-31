function [lambda]=power_method(A)
tol=10^(-16);
s=size(A);
n=s(1);
z=ones(n,1);
lam=0;
for k=1:10000
    znew=A*z;
    lam_new=dot(A*znew,znew)/dot(znew,znew);
    if abs(lam_new-lam)<tol
        break
    end
    z=znew/norm(znew,2);
    lam=lam_new;
end
lambda=lam_new;
end