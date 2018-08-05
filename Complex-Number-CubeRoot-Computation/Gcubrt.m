function G = Gcubrt(z,a)
z1=z(1);
z2=z(2);
a1=a(1);
a2=a(2);
g1 = (z1)^3 - 3*(z1)*(z2)^2 - a1;
g2 = -(z2)^3 + 3*(z1)^2*(z2) - a2;
G = [g1;g2];
end
