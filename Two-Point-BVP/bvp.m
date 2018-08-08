function [e, U1]=bvp(a,b,k,j,m,N)
h=(b-a)/N
w1=h*h;
T=sparse(N-1,N-1);
Func=zeros(N-1,1);
for i=1:N-2,
T(i,i)=-2/w1;
T(i+1,i)=1/w1;
T(i,i+1)=1/w1;
end
T(N-1,N-1)=-2/w1;
for i=1:N-1,
e(i)=a+i*h
Func1(i)=eval(m, e(i));
end
Func1(1)=Func1(1)-k/w1;
Func1(N-1)=Func(N-1)-j/w1;
U1=T\Func1;
return
