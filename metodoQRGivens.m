function [T, Q] = metodoQRGivens(A, imax)
    % A in forma di Hessenberg
    n = size(A);
    T = A;
    Q = eye(n);
    for i=1:imax
        for j=1:n-1
            G = givens(T,n,j);
            Q = G*Q;
            T = G'*T;
            T = T*G;
        end
    end
end