function G = givens(A, n, p)
    % n = dimensione della matrice
    % p = 
    a = A(p,p);
    b = A(p+1,p);
    q = p+1;
    if b == 0
        c = 1;
        s = 0;
    elseif abs(b)>abs(a)
        tau = -a/b;
        s = 1/(sqrt(1+tau*tau));
        c = s*tau;
    else
        tau = -b/a;
        c = 1/(sqrt(1+tau*tau));
        s = c*tau;
    end

    G = eye(n);
    G(p,p)= c;
    G(q,q)= c;
    G(q,p) = -s;
    G(p,q) = s;
end