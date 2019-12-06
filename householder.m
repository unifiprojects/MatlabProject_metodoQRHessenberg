function Q = householder(x)
    n = length(x);
    e1 = [1; zeros(n-1,1)];
    z = x + norm(x)*e1;
    Q = eye(n) - 2*(z*z')/norm(z)^2;
end