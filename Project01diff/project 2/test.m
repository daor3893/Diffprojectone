% Create An
An = formAn(3);
% Find orthogonal basis
Sn=orthog3(An);
    u1 = Sn(:,1);
    u2 = Sn(:,2);
    u3 = Sn(:,3);
disp(dot(u1,u2))
disp(dot(u2,u3))
disp(dot(u3,u1))
disp(norm(u1))
disp(norm(u2))
disp(norm(u3))
% The dot product between each vector is very small (close to zero), so
% therefore the vectors are orthogonal. Also, all the vectors are unit
% vectors, because their lengths are all 1

% QR factorization
% 3x3 of An
[Q,R]=cgs(An);
disp(Q)
disp(R)
% 4x4 of An
An4 = formAn(4);
[Q4,R4]=cgs(An4);
disp(Q4)
disp(R4)

disp(det(Q*R))
disp(det(R*Q))
disp(det(Q))
disp(det(R))

% Apply QR algorithm to 10x10, 20x20, 100x100
An10 = formAn(10);
for i = 1:1000
    [Q,R]=cgs(An10);
    An10 = R*Q;
end
approx10=min(diag(An10));

An20 = formAn(20);
for i = 1:1000
    [Q,R]=cgs(An20);
    An20 = R*Q;
end
approx20=min(diag(An20));

An100 = formAn(100);
for i = 1:1000
    [Q,R]=cgs(An100);
    An100 = R*Q;
end
approx100=min(diag(An100));
% error in eigenvalues
disp(abs((pi).^2-approx10)/(pi).^2)
disp(abs((pi).^2-approx20)/(pi).^2)
disp(abs((pi).^2-approx100)/(pi).^2)

% Power method
disp(power_method(formAn(10)))
