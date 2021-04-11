function [L,U,p] = funLUPivot(A)
  [n,n] = size(A);
  L = eye(n);
  p = 1:n;
  for k = 1:n-1
    [c,l] = max(abs(A(k:n,k)))
    l = l+k-1;
    temp = A(l,:);
    A(l,:) = A(k,:);
    A(k,:) = temp;
    temp = p(l);
    p(l) = p(k);
    p(k) = temp;
    temp = L(l,1:k-1);
    L(l,1:k-1) = L(k,1:k-1);
    L(k,1:k-1) = temp;    
    for i = k+1:n
      L(i,k) = A(i,k)/A(k,k);
      A(i,:) = A(i,:) - L(i,k)*A(k,:);
    endfor
  endfor
  U = A;
endfunction


