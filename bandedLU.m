function [L,U] = bandedLU(A,p,q)
  [n,n] = size(A);
  L = eye(n);
  for k = 1:n-1
    m = min(q+k,n); % Measure max row index that contains non zero value
    for i = k+1:m
      leftBand = min(i-1,q); % Measure bend length in the left side 
      rightBand = min(n-i,p); % Measure bend length in the right side
      maxlength = min(k+leftBand+rightBand,n); % Calculate max index for numbers that contained in the band area
      L(i,k) = A(i,k)/A(k,k);
      A(i,k:maxlength) = A(i,k:maxlength) - L(i,k)*A(k,k:maxlength); % Only calculate the number that contained in the band area
    endfor
  endfor
  U = A;
endfunction