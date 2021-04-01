function [L,D] = funLDLT(A)
    [n,n] = size(A);
    L = eye(n);
    for k = 1:n-1
      for i = k+1:n
        L(i,k) = A(k,i)/A(k,k);
        A(i,i:n) = A(i,i:n) - L(i,k)*A(k,i:n);
      endfor
    endfor
    D = diag(A);
  endfunction