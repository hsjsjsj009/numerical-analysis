function [R,bt] = myQR(A,b)
  [m,n] = size(A);
  A = [A b];
  #cost sigma(1:n) (n-k) * (m-k)
  for k=1:n
    e = zeros(m+1-k,1);
    e(1) = 1;
    v = A(k:m,k) + sign(A(k,k))*norm(A(k:m,k))*e
    alpha = 2/(v'*v);
    # cost (n-k) * (m-k)
    [x,y] = size(v);
    H = eye(x,x) - alpha*v*v'
    for j=k:n+1
      # Hx = x - 2*v'*x*v/(v'*v)
      A(k:m,j) = A(k:m,j)-alpha*v'*A(k:m,j)*v;
    endfor
    matrix = A
  endfor
  # R = Q'*A
  # bt = Q'*b
  R = A(:,1:n);
  bt = A(:,n+1);
endfunction
