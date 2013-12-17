Logistic Regression
===================

Logistic Regression is a popular algorithm used for Classifiction Problems

- Binary Classification = output y is a discrete value of 0 (negative class) or 1 (positive class)
  + 0 <= Logistic Regression output(h_theta(x)) <= 1
  + h_theta(x) = g(theta^T * x) where g(z) = 1/(1 + e^(-z))
  + h_theta(x) = 1/(1 + e^(-theta^T * x))
  + h_theta(x) = estimated probability that y = 1 on input x
  + h_theta(x) = P(y = 1 | x; theta)
  + P(y = 1 | x; theta) + P(y = 0 | x; theta) = 1
  + Decision Boundary

- Multi-class Classification = output y can take on multiple values