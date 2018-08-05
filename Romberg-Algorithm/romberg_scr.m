disp('pifunc, [0,1]:')
[int, err, ier]=romberg(@pifunc, 0, 1, 1e-14)
disp('')
disp('logderiv, [1,e]:')
[int, err, ier]=romberg(@logderiv, 1, exp(1), 1e-14)
disp('')
disp('erfderiv, [0,1]:')
[int, err, ier]=romberg(@erfderiv, 0, 1, 1e-14)
disp('')
disp('erfderiv, [0,3]:')
[int, err, ier]=romberg(@erfderiv, 0, 3, 1e-14)
