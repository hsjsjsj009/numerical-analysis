function [L,U] = funLU(A)
  [n,n] = size(A);
  L = eye(n);
  for k = 1:n-1
    for i = k+1:n
      L(i,k) = A(i,k)/A(k,k);
      A(i,:) = A(i,:) - L(i,k)*A(k,:);
    endfor
  endfor
  U = A;
endfunction


