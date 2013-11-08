linearRegressionIn1Variable
===========================

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