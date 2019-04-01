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