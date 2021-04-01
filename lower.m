function x = lower(L,b)
  n = length(b);
  x(1) = b(1)/L(1,1);
  for i=2:n
    x(i) = (b(i) - L(i,1:i-1)*x(1:i-1)')/L(i,i);
  endfor
endfunction
