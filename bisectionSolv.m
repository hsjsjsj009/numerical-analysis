function [x,n] = bisectionSolv(a,b,tol)
  n = 0;
  fa = sqrt(a) + sqrt(a+1) + sqrt(a+4) + sqrt(a+9) - 10;
  fb = sqrt(b) + sqrt(b+1) + sqrt(b+4) + sqrt(b+9) - 10;
  while b-a>tol
    m = (a+b)/2;
    fm = sqrt(m) + sqrt(m+1) + sqrt(m+4) + sqrt(m+9) - 10
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
