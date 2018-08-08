function [t,x]=euler_ode(x0,step,scale)
	x(1,:)=x0; 	
	t(1)=scale(1); 
	h=(scale(2)-scale(1))/step;
	for i=1:1:step
		t(i+1)=t(i)+h;
		f=x(i,:)
		f+=h*ode(t(i), x(i,:))
		x(i+1,:)=f
	end

function w=ode(t,x)
	w(1)=x(2)
	w(2)=x(3)
	w(3)=t*x(1)-2*x(3)


