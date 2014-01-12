Diagnostic Tests for Machine Learning Algorithms
================================================

Here you will find tests that you can run to gain insight into what is/isn't working with a learning algorithm and learn 
how to improve it's performance.

- Evaluating a Hypothesis
  + Keep in mind a hypothesis may overfit the general data when it gets very good results on the input training data.
  + Step 1) Split your training set into 60% for training, 
  20% for cross validation set, and 20% for testing.
  + Example of Step 1 Result) In am implementation of linear regression without regularization if the learning algorithm has a low training error but high test error then we know the linear regression is badly overfitting the training set.
  + TODO: add notes

- Model Selection and Train/Validation/Test Sets
  + TODO: add notes
  + Because we choose the best hypothesis for the cross validation set we will expect to see that J_crossValidation(theta) to be less than J_test(theta).

- If your learning algorithm isn't working as well as you would like it is most likely that you are underfitting the data (also
  known as bias) or overfitting the data (also known as variance).  
  ![alt text](https://raw.github.com/quinnliu/MachineLearning/master/imagesForExplanation/UnderFitAndOverFit.jpg)

  + If Bias/Underfit problem
    - J_training(theta) will be high
    - J_crossValidation(theta) ~= J_training(theta)
  + If Variance/Overfit problem
    - J_training(theta) will be low
    - J_crossValidation much bigger than J_training(theta)