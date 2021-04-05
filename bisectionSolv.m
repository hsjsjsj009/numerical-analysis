function [x,n] = bisectionSolv(a,b,tol)
  n = 0;
  fa = exp(-a)-0.5*a;
  fb = exp(-b)-0.5*b;
  while b-a>tol
    m = (a+b)/2;
    fm = exp(-m)-0.5*m;
    if fm*fa<0
      b = m;
      fb = fm;
    else
      a = m;
      fa = fm;
    end
    n = n+1;
  endwhile
  x = m;
endfunction
