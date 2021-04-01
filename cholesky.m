function G = cholesky(A)
    [n,n] = size(A);
    G(1,1) = sqrt(A(1,1));
    for i = 2:n
        G(i,1) = A(i,1)/G(1,1);
    end
    for k = 2:n
        G(k,k) = sqrt(A(k,k) - (G(k,1:k-1)*G(k,1:k-1)'));
        for i = k+1:n
            G(i,k) = (A(i,k)-G(i,1:k-1)*G(k,1:k-1)')/G(k,k);
        end
    end
endfunction