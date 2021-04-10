function [x,n] = bisectionSolv(a,b,tol)
  n = 0;
  fa = a^3-2^a;
  fb = b^3-2^b;
  while b-a>tol
    m = (a+b)/2;
    fm = m^3-2^m;
    if fm*fa<0
      b = m
      fb = fm;
    else
      a = m
      fa = fm;
    end
    n = n+1
  endwhile
  x = m;
endfunction
