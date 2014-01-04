Using Logistic Regression For Prediction
========================================

This specific folder contains 2 examples of using logistic regression for prediction
. But understand that by just giving a different ```inputTrainingSet1.txt``` or
```inputTrainingSet2.txt``` file you can easily use logistic regression to predict something you want!

<h2>How to use this code:</h2>
1. install Octave or Matlab

2. fork this repo and clone it locally!

3. navigate into the folder with the above files

4. type ```runExample``` in Octave or Matlab command line to see an example of how
logistic regression is used to predict with a linear decision boundary.

5. type ```runRegularizedExample``` in Octave or Matlab command line to see an
example of how regularized logistic regression is used to predict with a 
circular decision boundary.

<h2>Logistic Regression Review</h2>
Logistic Regression is a popular algorithm used for Classifiction Problems

- Binary Classification = output y is a discrete value of 0 (negative class) or 1 (positive class)
  + 0 <= Logistic Regression output(h_theta(x)) <= 1
  + h_theta(x) = g(theta^T * x) where g(z) = 1/(1 + e^(-z)) also known as the sigmoid function
  + Hypothesis Representation = h_theta(x) = 1/(1 + e^(-theta^T * x))
    - h_theta(x) = estimated probability that y = 1 on input x
    - h_theta(x) = P(y = 1 | x; theta)
    - P(y = 1 | x; theta) + P(y = 0 | x; theta) = 1
  + Decision Boundary = line that separtes where y = 1 and where y = 0 (in a graph of the data)
  + How to find Cost Function?
    - training set = {(x^(1), y^(1)), (x^(2), y^(2)), ... , (x^(m), y^(m))} of m training examples
    - x = [x_0; x_1; ... ; x_n] where x_0 = 1
    - h_theta(x) = 1/(1 + e^(-theta^T * x))
    - How to choose parameters theta???
  + Logistic regression cost function:
    - J(theta) = (1/m) Sum from i = 1 to m of costFunction(h_theta(x^(i)), y^(i))
    - costFunction(h_theta(x), y)) = { -log(h_theta(x)) if y = 1; -log(1 - h_theta(x)) if y = 0
    - Note: y always = 0 or 1
    - This means that costFunction(h_theta(x), y)) can be rewritten into:
      + costFunction(h_theta(x), y)) = -y * log(h_theta(x)) - (1 - y) * log(1 - h_theta(x))
    - J(theta) = (-1/m) Sum from i = 1 to m of [y^(i) * log(h_theta(x^(i))) + (1 - y^(i)) * log(1 - h_theta(x^(i)))]
      + this specific cost function is derived from statistics using the principle of maximum likelyness estimation
    - NOW we want to find when J(theta) is smallest. This will give us the parameters for theta we NEED!
      + we are going to minimize/find when J(theta) is smallest using gradient descent for one step as:
        - theta_j = theta_j - alpha * partialDerivativeOfJ(theta)WithRespectToThetaJ
        - After calculating the partial derivative you get: theta_j = theta_j - alpha * Sum from i = 1 to m of [[h_theta(x^(i)) - y^(i)] * x_j^(i)]
        - This above equation is NOT the same equation used in linear regression. What is changed is that h_theta(x) = 1/(1 + e^(-theta^T * x)) in logistic regression AND NOT h_theta(x) = theta^T * x as in linear regression.

  + So now we can implement code that can:
    - step 1) compute J(theta)
    - step 2) compute partialDerivativeOfJ(theta)WithRespectToThetaJ (for j = 0, 1, 2, ..., n)
    - step 3) then we can plug the result of step 2 into our gradient descent algorithm for logistic regression, conjugate gradient, BFGS, or L-BGFS
    - NOTE: the methods conjugate gradient, BFGS, and L-BGFS require no need to manually pick alpha and are often faster then gradient descent. However they are significantly more complex and require weeks to truly understand.

  + Example code session:
    - First navigate into this folder locally with the Octave/Matlab command line tool. Then type:
      ```
      octave-3.2.4.eve:21> PS1('>> ')
      >>
      >> options = optimset('GradObj', 'on', 'MaxIter', '100');
      >> initialTheta = zeros(2, 1)
      initialTheta = 
         0
         0
      >> [optTheta, functionVal, exitFlag] = fminunc(@costFunctionExample, initialTheta, options)
      optTheta = 
         5.0000
         5.0000

      functionVal = 1.57777e-030
      exitFlag = 1
      ```
  + Overview of generic costFunction implemented in Octave/Matlab:
    ```octave
    function [jValue, gradient] = costFunction(theta)
      jVal = [code to compute J(theta)];

      gradient(1) = [code to compute partialDerivativeOfJ(theta)WithRespectToTheta0]
      gradient(2) = [code to compute partialDerivativeOfJ(theta)WithRespectToTheta1]
      // ...
      gradient(n + 1) = [code to compute partialDerivativeOfJ(theta)WithRespectToThetaN]
    ```
- Multi-class Classification = output y can take on multiple values
  + One-vs-all (one-vs-rest) = train a logistic regressioin classifier (h_theta(x))^(i) for each
  class i to predict the probability that y = i. On a new input x, to make a prediction, pick the
  class i that maximizes (h^(i)_theta(x))
    - (h^(i))_theta(x) = P(y = i | x; theta) where i = 1, 2, 3, ...

- Problem of overfitting for logistic & linear regression has high varience
  + overfitting = if there are too many features, the learned hypothesis may fit the training
  set very well, but fail to generalize to new examples due to the hypothesis curves that are generated
  + Solving overfitting:
    - 1) reduce the # of features to only the important ones 2) model selection algorithm
    - 3) Regularization = keep all the features but reduce magnitude/values of parameters theta_j
        + have small values for parameters theta_0, theta_1, ... theta_n
        + this creates a "simpler" hypothesis and thus is less prone to overfitting
        + we shrink all theta parameters by adding an extra regularization term lambda * Sum of i = 1 to n of (theta_j)^2
        + this gives us the new cost function J(theta) = (1/2m) Sum from i = 1 to m of [h_theta(x^(i)), y^(i)]^2 + lambda * Sum of i = 1 to n of (theta_j)^2
        + lambda needs to be just right. If lambda is too large the cost function will be underfitted with a horizontal line, otherwise if lambda is too small the cost function will be overfitted.
    - 4) works well when there are a lot of features, each which contributes a little bit to predicting output y