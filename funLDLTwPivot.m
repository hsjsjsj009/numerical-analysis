function [L,D,p] = funLDLTwPivot(A)
    [n,n] = size(A);
    L = eye(n);
    p = 1:n;
    for k = 1:n-1
        Da = diag(A);
        [m,d] = max(abs(Da(k:n)));
        d = d+k-1;
        temp = A(d,:);
        A(d,:) = A(k,:);
        A(k,:) = temp;
        temp = A(:,d);
        A(:,d) = A(:,k);
        A(:,k) = temp;
        temp = p(d);
        p(d) = p(k);
        p(k) = temp;
        temp = L(d,1:k-1);
        L(d,1:k-1) = L(k,1:k-1);
        L(k,1:k-1) = temp;    
      for i = k+1:n
        L(i,k) = A(k,i)/A(k,k);
        A(i,i:n) = A(i,i:n) - L(i,k)*A(k,i:n);
      endfor
    endfor
    D = diag(A);
  endfunction