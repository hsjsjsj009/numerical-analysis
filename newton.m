function [x,n] = newton(x0,tol)
%newton - Description
%
% Syntax: [x,n] = newton(x0)
%
% Long description
f = @(x) x^2 - 2;
fdif = @(x) 2*x;
n = 0;
f0 = f(x0);
while abs(f0) > tol
    x0 = x0 - f(x0)/fdif(x0)
    f0 = f(x0);
    n = n+1
endwhile
x = x0;
    
end