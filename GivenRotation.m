function [R, bt] = GivenRotation(A, b) 
  [m, n] = size(A); 
  A = [A b]; 
  # sigma(k:=1..n) 4 * (m-k) * (n-k) 
  for k=1:n 
    # 4 * (m-k) * (n-k) 
    for i=k+1:m
      if A(i,k) == 0
        continue;
      endif
      r = sqrt(A(k,k)^2 + A(i,k)^2); 
      c = A(k,k)/r; s = A(i,k)/r; 
      # 4*(n-k) 
      temp_k = c*A(k,k:n+1) + s*A(i,k:n+1); 
      temp_i = -s * A(k,k:n+1) + c*A(i,k:n+1); 
      A(k,k:n+1) = temp_k; 
      A(i,k:n+1) = temp_i; 
      A
    endfor 
  endfor 
  R = A(:,1:n); 
  bt = A(:,n+1); 
  endfunction 