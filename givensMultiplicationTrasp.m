function T = givensMultiplicationTrasp(G, T, p)
    n = size(T);
    c = G(p, p);
    s = -G(p, p+1);
    for j = 1:n
        t1 = T(p,j);
        t2 = T(p+1,j);
        T(p,j) = c*t1 - s*t2;
        T(p+1,j) = s*t1 + c*t2;
    end
end