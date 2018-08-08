a=0;
b=pi/2;
N=10;
k=-0.3;
j=-0.1;
[e,U1]=bvp(a,b,k,j,'m',N);

plot(e,U1);
hold
r=zeros(N-1,1);
for i=1:N-1,
r(i)=-(sin(e(i))+3*cos((e(i))))/10;
end

plot(e,r)
figure(2);
plot(e,U1-r)
norm(U1-r,inf) 
