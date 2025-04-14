% Objective function: minimize Z = x1 + x2 + x3 + x4 + x5 + x6
f = [1, 1, 1, 1, 1, 1];  % Coefficients for the objective function

% Inequality constraints (Ax <= b form)
A = [-1, 0, 0, 0, 0, -1;
     -1, -1, 0, 0, 0, 0;
     0, -1, -1, 0, 0, 0;
     0, 0, -1, -1, 0, 0;
     0, 0, 0, -1, -1, 0;
     0, 0, 0, 0, -1, -1];
 
b = [-3, -86, -117, -120, -53, -41];  % Right-hand side values

% Lower bounds for x (assuming no negative values for x)
lb = zeros(6,1);

% Solve using linprog
[x, fval] = linprog(f, A, b, [], [], lb, []);

% Display the result
disp('Optimal values for x1, x2, x3, x4, x5, x6:');
disp(x);

disp('Minimum value of Z:');
disp(fval);
