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