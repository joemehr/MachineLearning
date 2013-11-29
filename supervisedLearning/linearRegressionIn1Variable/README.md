Predicting City Population Using Linear Regression
==================================================
What each file or folder is for:

+ run.m = the main program

Build(How To Use This Code)
===========================
1. install Octave or Matlab 

2. fork this repo and type ```git clone <HTTP link here>```
in your command line

3. navigate to the folder with the above files

4. type ```run``` in Octave or Matlab command line

5. You will see a printout of linear regression being applied to predict population size of new cities. Additionally there will be several graphs:
   + Graph of data 
   + Graph of cost function
   + Graph of minimal theta values for hypothesis equation

Linear Regression In 1 Variable Review
======================================

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