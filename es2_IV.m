% Es1 dell'esercitazione IV é il file householder.m

% Es2 dell'esercitazione IV:

A = [1 1 1 1
     8 4 2 1
     27 9 3 1 
     64 16 4 1];
 
B = [1 1 1 1
     1 2 3 4 
     1 3 6 10
     1 4 10 20];

hess(A)
[H,Q] = hessenberg(A)

hess(B)
[H,Q] = hessenberg(B)

