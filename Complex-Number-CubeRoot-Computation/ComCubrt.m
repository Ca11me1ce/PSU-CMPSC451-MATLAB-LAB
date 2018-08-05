function [z, niter]=ComCubrt(a)

  avec=[real(a); imag(a)]; % Represent the complex number a as the vector avec
  zvec=avec; % Just make a the initial guess for its cube root

basic_digits=10;
norm_signal=2;

z_with_k_power=zvec;
z0_with_k_power=[0 0];

number_of_iteration=0;
tol=basic_digits*eps*max(norm(z_with_k_power, norm_signal), basic_digits*eps);
G=Gcubrt(z_with_k_power, avec);

while tol<norm(z_with_k_power-z0_with_k_power,norm_signal)
	z0_with_k_power=z_with_k_power;
	J=Jcubrt(z_with_k_power);
	z_with_k_power=z_with_k_power-J\G;
	G=Gcubrt(z_with_k_power, avec);
	tol=basic_digits*eps*max(norm(z_with_k_power, norm_signal), basic_digits*eps);
	number_of_iteration=number_of_iteration+1;
	if(number_of_iteration>25)
		break;
	end
end

niter=number_of_iteration;
zvec=z_with_k_power;
z=complex(zvec(1), zvec(2));%last line

end
