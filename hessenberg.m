function [H,Q] = hessenberg(A)
    H = A;
    n = size(A,1);
    Q = eye(n);
    for i=1:n-2
        x = H(i+1:n, i);
        Ha = householder(x);
        HH = [eye(i) zeros(i,n-i); zeros(n-i, i) Ha];
        Q = Q*HH;
        H = HH*H*HH;
    end
end