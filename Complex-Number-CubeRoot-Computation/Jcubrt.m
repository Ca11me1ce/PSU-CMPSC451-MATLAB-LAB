function J = Jcubrt(z)
z1=z(1);
z2=z(2);
J=[(3*(z1)^2 + 3*(z2)^2) (-6*(z1)*(z2)); (6*(z1)*(z2)) (-3*(z2)^2 + 3*(z1)^2)];
end
