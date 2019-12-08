function [T, Q] = metodoQRshift(A, shift, imax)
    T = A;
    for i=1:imax
        T = T - shift * eye(length(A));
        [Q, R] = qr(T);
        T = R * Q + shift * eye(length(A));
    end
end