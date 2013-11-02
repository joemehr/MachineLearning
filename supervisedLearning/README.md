supervisedLearning
==================

+ Linear Regression in 1 variable with training set
    - m = number of training examples
    - x's = "input" variable/feature
    - y's = "output" target variable
    - (x,y) = one training example
    - (x^(i),y^(i)) = ith training example
    - h(x) = theta_0 + theta_1 * x where h maps from x's to y's
    - WHOLE POINT: Find theta_0 & theta_1 so that h(x) is close to y for our training examples (x,y)
    - mathamatically this means we need to minimize (1/2m)(Sum from i = 1 to m of (h(x^(i))-y^(i))^2 ) where (1/2m) makes math easilier and (h(x^(i)) = theta_0 + theta_1 * x^(i)
    - math notation = minimize over theta_0, theta_1 the cost function J(theta_0, theta_1) also called the squared error function
    - WHOLE POINT explained using a picture: https://github.com/quinnliu/MachineLearning/blob/master/imagesForExplanation/CostFunctionExampleWithTheta_0AndTheta_1.jpg 
    - Now plugging in the minimal theta_0 and theta_1 our function h(x) = theta_0 + theta_1 * x will predict h(x) = y by giving it an input x.
    - But how do we find the minimal theta_0 and theta_1?! GRADIENT DESCENT = algorithm that lets us find a minimal theta_0 and theta_1. It can also be used to minimize any arbitrary function J.
    - "Batch" Gradient Descent = each step of gradient descent uses all of the training examples.
+ Linear Algebra Review
    - matrix = rectangular array of numbers written between square brackets.
    - dimension of a matrix = # of rows x # of columns
    - vector = an n x 1 matrix where (n = # of rows)
    - maxtrices are written with capital letters while vectors are written with lower case letters
    - matrix matrix multiplication:
        + A = [a b; c d; e f] which is a 3x2 matrix
        + B = [g h i j; k l m n] which is a 2x4 matrix
        + A * B = a 3x4 matrix
        + To multiply A with B the # of columns in A must = # of rows in B.
        + A * B = [ag+bk ah+bl ai+bm aj+bn; cg+dk ch+dl ci+dm cj+dn; eg+fk eh+fl ei+fm ej+fn]
    - maxtrix properties: 
    not commutative = matrix A x matrix B != B x A 
    is associative = A x (B x C) = (A x B) x C
    - identity matrix = I_nxn = has 1 along the top left to bottom right diagonal and 0 at every other element. For any matrix A_mxn * I_nxn = I_mxm * A_mxn = A_mxn
    - Matrix inverses: Not all matrices have an inverse. Only a square matrix COULD have an inverse. A*A^-1 = A^-1 * A = I
    - Matrix transpose: The transpose of a given matrix A_mxn is B_nxm where B_ij = A_ji.

+ Linear Regression in multiple variables with training set
    - Multiple features/variables
    n = number of features


