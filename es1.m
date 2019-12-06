clc
clear

A1 = [1 1 1 1
      1 2 2 2
      1 2 3 3
      1 2 3 4];

A2 = [15 -2 2
     1 -10 -3
     -2 1 0];

A3 = [6 2 3 4
     7 8 3 4
     1 2 3 4
     1 9 0 10];

autovaloriA1 = eig(A1)
autovaloriA2 = eig(A2)
autovaloriA3 = eig(A3)

[T, Q] = metodoQRGivens(hess(A1), 30)
[T, Q] = metodoQRGivens(hess(A1), 60)

[T, Q] = metodoQRGivens(hess(A2), 30)
[T, Q] = metodoQRGivens(hess(A2), 60)

[T, Q] = metodoQRGivens(hess(A3), 30)
[T, Q] = metodoQRGivens(hess(A3), 60)