clc
clear

% Matrici esercitazione IV
A1 = [33 16 72
      -24 -10 -57
      -8 -4 -17];

A2 = [15 -2 2
      1 10 -3
      -2 1 0];

autovaloriA1 = eig(A1)
autovaloriA2 = eig(A2)

disp("Matrice A1 con shift 2.1");
[T, Q] = metodoQRshift(hess(A1), 2.1, 100);
T

disp("Matrice A1 con shift 14");
[T, Q] = metodoQRshift(hess(A1), 14, 100);
T

disp("Matrice A2 con shift 14");
[T, Q] = metodoQRshift(hess(A2), 14, 100);
T
