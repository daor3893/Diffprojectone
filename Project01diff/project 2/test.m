% Create An (Section 3 #3)
An = formAn(3);
% Code in formAn.m

% Find orthogonal basis (Section 4 #1)
Sn=orthog3(An);
% code in orthog3.m
    u1 = Sn(:,1);
    u2 = Sn(:,2);
    u3 = Sn(:,3);
disp('Dot products of u1, u2, and u3: ')
disp(dot(u1,u2))
disp(dot(u2,u3))
disp(dot(u3,u1))
disp('Lengths of u1, u2, and u3: ')
disp(norm(u1))
disp(norm(u2))
disp(norm(u3))
% The dot product between each vector is very small (close to zero), so
% therefore the vectors are orthogonal. Also, all the vectors are unit
% vectors, because their lengths are all 1

% QR factorization #1
% 3x3 of An
[Q,R]=cgs(An);
disp('QR factorization of 3x3 matrix A: ')
disp('Q: ')
disp(Q)
disp('R: ')
disp(R)
% 4x4 of An
An4 = formAn(4);
[Q4,R4]=cgs(An4);
disp('QR factorization of 3x3 matrix A: ')
disp('Q: ')
disp(Q4)
disp('R: ')
disp(R4)

% QR and RQ have the same determinant (QR algorithm in practice #1, remaining work on paper)
% This may not be the right work, I think I have it written down on paper
disp('Determinants of QR, RQ, Q, and R: ')
disp('det(QR): ')
disp(det(Q*R))
disp('det(RQ): ')
disp(det(R*Q))
disp('det(Q): ')
disp(det(Q))
disp('det(R): ')
disp(det(R))

% Apply QR algorithm to 10x10, 20x20, 100x100
% QR algorithm in practice #2
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
disp('Errors in eigenvalue approximations using QR algorithm: ')
disp(abs((pi).^2-approx10)/(pi).^2)
disp(abs((pi).^2-approx20)/(pi).^2)
disp(abs((pi).^2-approx100)/(pi).^2)

% Power method #1
approx10 = 1/power_method(inv(formAn(10)));
approx20 = 1/power_method(inv(formAn(20)));
approx100 = 1/power_method(inv(formAn(100)));
% error in eigenvalues
disp('Errors in eigenvalue approximations using Power Method: ')
disp(abs((pi).^2-approx10)/(pi).^2)
disp(abs((pi).^2-approx20)/(pi).^2)
disp(abs((pi).^2-approx100)/(pi).^2)
