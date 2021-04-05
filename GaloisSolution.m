function [x,n] = GaloisSolution(x0,tol)
  % g(x) = (x^2 + 4)/5
  % g2(x) = sqrt(5x-4)
  % g3(x) = (x^2 -4)/(2x-5)
  n = 0;
  f0 = (x0^2 - 5*x0 + 4);
  while abs(f0) > tol
    x0 = (x0^2 +4)/5;
    f0 = (x0^2 - 5*x0 + 4);
    n = n+1;
  endwhile
  x = x0;
endfunction
