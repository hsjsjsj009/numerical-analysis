function x = gauss (A, b)

    [row,col] = size(A);
    n = row;
    x = zeros(size(b));
    A=[A b];
    for k = 1:n-1   
      for i = k+1:n
         m = A(i,k) / A(k,k);
         A(i, :) = A(i, :) - m * A(k, :);
      end
      
    b = A(:,end);
    x(n,1) = b(n)/A(n,n);
      for i=n-1:-1:1
        x(i,1) = (b(i) - A(i,i+1:n)*x(i+1:n,1))/A(i,i);
      end
    end
    
endfunction