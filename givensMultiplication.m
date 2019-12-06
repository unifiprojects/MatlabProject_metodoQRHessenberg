function T = givensMultiplication(G, T, p)
    n = size(T);
    c = G(p, p);
    s = G(p, p+1);
    for j = 1:n
        t1 = T(j,p);
        t2 = T(j,p+1);
        T(j,p) = c*t1 - s*t2;
        T(j,p+1) = s*t1 + c*t2;
    end
end
