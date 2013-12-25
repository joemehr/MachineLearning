Logistic Regression
===================

Logistic Regression is a popular algorithm used for Classifiction Problems

- Binary Classification = output y is a discrete value of 0 (negative class) or 1 (positive class)
  + 0 <= Logistic Regression output(h_theta(x)) <= 1
  + h_theta(x) = g(theta^T * x) where g(z) = 1/(1 + e^(-z))
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
      + this specific cost function is derived from statistics using the principle of maximum likely ness estimation
    - NOW we want to find when J(theta) is smallest. This will give us the parameters for theta we NEED!



- Multi-class Classification = output y can take on multiple values