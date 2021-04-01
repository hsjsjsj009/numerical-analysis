function [R,bt,p] = HouseHolderWithPivot(A,b)
  [m,n] = size(A);
  A = [A b];
  p = 1:n;
  #cost sigma(1:n) (n-k) * (m-k)
  for k=1:n
    normcol = k:n;
    for j=k:n
      normcol(j) = norm(A(k:m,j));
    endfor
    [val,pos] = max(normcol);
    pos = pos+k-1;
    temp = A(:,k);
    A(:,k) = A(:,pos);
    A(:,pos) = temp;
    temp = p(k);
    p(k) = p(pos);
    p(pos) = temp;
    e = zeros(m+1-k,1);
    e(1) = 1;
    v = A(k:m,k) + sign(A(k,k))*norm(A(k:m,k))*e;
    alpha = 2/(v'*v);
    # cost (n-k) * (m-k)
    for j=k:n+1
      # Hx = x - 2*v'*x*v/(v'*v)
      A(k:m,j) = A(k:m,j)-alpha*v'*A(k:m,j)*v;
    endfor
  endfor
  # R = Q'*A
  # bt = Q'*b
  R = A(:,1:n);
  bt = A(:,n+1);
endfunction
