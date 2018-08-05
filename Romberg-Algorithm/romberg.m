function [int,err,ier] = romberg(f,a,b,tol)

format long
max_level = 10;
tol = abs(tol);
max_level = abs(max_level);

if tol == 0 ||  tol >= 1 || max_level < 1
	error('The input is not valid')
end

z_matrix  = zeros(1,max_level+1);
k = 0;
err = 1;
z = 0;

while (err > tol * z)
	if k==0
		z_matrix(k+1) = trapezoid(f,a,b,k+1,0);
	else
		z_matrix(k+1) = trapezoid(f,a,b,k+1,z_matrix(k));
	end

	for j = k:-1:1
		p = 4^(k-j+1);
		z_matrix(j) = (p*z_matrix(j+1) - z_matrix(j))/(p - 1);
	end

	I = z_matrix(1);

	if k > 1
		err = abs(I-z);
	end

	z = I;
	k = k + 1;

	if k == max_level && abs(err)>tol
		ier = 1;
		break;
	else
		ier = 0;

	end
end

int = I;

end
