## Linear Algebra

*From 22 October, 2021*

This code creates a custom MATLAB function, called by `luFactorization(A)`, where "A" is a square matrix. The function takes the single square matrix and displays an upper triangle and lower triangle representing the lower and uppuer factorization of the matrix. If multiplied, they will equal the original matrix multiplied by the partial pivoting made in order to acheive the triangles. Partial pivoting is done to avoid dividing any numbers by 0, resulting in an error. The order or partial pivoting is represented in this function by P, displaying a matrix consisting or 1s and 0s, where the 1's show the original order of the matrix and how the rows have been changed. (ei, 100 is row one, 010 is row two, etc.). The original matrix must be a square or else the factorization if incorrect. If this code is attempted to be ued with a non-squrae A matrix, an error is displayed and it will not run. 

This code introduces new commands/functions such as `size()` and also uses matrix element referencing. Code contains comments for processes.

**Caution! May have an error in partial pivoting result. Please review before using**