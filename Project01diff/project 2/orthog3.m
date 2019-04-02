function[Sn]=orthog3(An)
    v1 = An(:,1);
    v2 = An(:,2);
    v3 = An(:,3);
    u1 = v1/norm(v1,2);
    length1 = norm(u1,2);
    u2 = v2-(u1*dot(u1,v2)/(length1).^2);
    u2 = u2/norm(u2);
    length2 =norm(u2,2);
    u3 = v3-(u1*dot(u1,v3)/(length1).^2)-(u2*dot(u2,v3)/(length2).^2);
    u3 = u3/norm(u3);
    Sn=[u1 u2 u3];
end