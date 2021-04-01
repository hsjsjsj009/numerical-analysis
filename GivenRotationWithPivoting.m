function [R, bt,p] = GivenRotationWithPivoting(A, b) 
  [m, n] = size(A); 
  A = [A b]; 
  p = 1:n;
  # sigma(k:=1..n) 4 * (m-k) * (n-k) 
  for k=1:n 
    # 4 * (m-k) * (n-k)
    normcol=k:n
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
    for i=k+1:m 
      r = sqrt(A(k,k)^2 + A(i,k)^2); 
      c = A(k,k)/r; s = A(i,k)/r; 
      # 4*(n-k) 
      temp_k = c*A(k,k:n+1) + s*A(i,k:n+1); 
      temp_i = -s * A(k,k:n+1) + c*A(i,k:n+1); 
      A(k,k:n+1) = temp_k; 
      A(i,k:n+1) = temp_i; 
    endfor 
  endfor 
  R = A(:,1:n); 
  bt = A(:, n+1); 
  endfunction 