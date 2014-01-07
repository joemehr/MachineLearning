Neural Networks
===============

<h2>How to use this code:</h2>

<h2>Neural Network Review</h2>
  - Why a new non-linear hypotheses?
    + The problem with linear & logistic regression is that when we have a large # of features say 100 the # of feature combinations that must be computed using linear or logisitic regression gets RIDICKULOUSLY large. For example when we have 100 features and we decide to create a decision boundary that is cubic then
    the # of feature combinations is about 170,000 starting with x_1 * x_2 * x_3, (x_1)^2 * x_2, ... you can imagine there being
    about 170,000 combinations of the terms x_1, x_2, ..., x_100.

    + For problems like computer vision, the # of features is very large. For example a 50 x 50 pixel greyscale image will have 
    2500 pixels. And if we trained linear or logistic regression with all pixel to pixel relationships then we would have 2500
    features x 2500 other features giving us 3 million plus features which is WAY TOO MUCH.

  - Representing a Neuron
    + Here is a neuron in your brain:  
    ![alt text](https://raw.github.com/quinnliu/MachineLearning/master/imagesForExplanation/LabeledNeuron.jpg)

    + To represent this as an artificial neuron we have:  
    ![alt text](https://raw.github.com/quinnliu/MachineLearning/master/imagesForExplanation/ArtificialNeuronModel.jpg)

    + where x = [x_0; x_1; x_2; x_3] where x_0 always = 1 and theta = [theta_0; theta_1; theta_2; theta_3]

    + Now if we have a whole bunch of artificial neurons in a few layers we get a neural network like:  
    ![alt text](https://raw.github.com/quinnliu/MachineLearning/master/imagesForExplanation/NeuralNetwork.jpg)

    + where (a_i)^(j) = activation of unit i in layer j and BigTheta^(j) = matrix of weights controlling function mapping from layer j to layer j + 1
      - The dimension of BigTheta^(j) is s_j+1 x (s_j + 1) if a neural network has s_j units in layer j & s_j+1 units in layer j + 1.
      - This is the set of equations that describes the above neural network configuration during forward propagation:
      ![alt text](https://raw.github.com/quinnliu/MachineLearning/master/imagesForExplanation/NeuralNetworkEquations.jpg)

      - Now one or more of the neurons in a neural network can simulate a logical operations including AND, OR, NOT, XNOR. Here is an artificial neuron simulating the logical AND operation:  
      ![alt text](https://raw.github.com/quinnliu/MachineLearning/master/imagesForExplanation/ArtificialNeuronSimulateLogicalAND.jpg)
