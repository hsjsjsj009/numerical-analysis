function ret = mypol1(x)
  f = @(x) 1/(1+10*x*x);
  for i=0:100
    s(i+1) = -1+i/50;
  endfor 
  A = zeros(101,101);
  for i=1:101
    A(i,1) = 1;
    for j=2:101
      A(i,j) = s(i)^(j-1);
    endfor
  endfor
  b = zeros(101,1);
  for i=1:101
    b(i) = f(s(i));
  endfor
  solusi = A\b;
  ret = 0;
  for i=1:101
    ret = ret + solusi(i)*x^(i-1);
  endfor
endfunction