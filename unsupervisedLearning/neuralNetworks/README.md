Neural Networks
===============

<h2>How to use this code:</h2>

<h2>Neural Network Review</h2>
  - Why a new non-linear hypotheses?
    + The problem with linear & logistic regression is that when we have a large # of features say 100 the # of feature combinations that must be computed using linear or logisitic regression gets RIDICKULOUSLY large. For example when we have 100 features and we decide to create a decision boundary that is cubic then
    the # of feature combinations is about 170,000 starting with x_1 * x_2 * x_3, (x_1)^2 * x_2, ... you can image there being
    about 170,000 combinations of the terms x_1, x_2, ..., x_100.

    + For problems like computer vision, the # of features is very large. For example a 50 x 50 pixel greyscale image will have 
    2500 pixels. And then if trained linear or logistic regression with all pixel to pixel relationships then we would have 2500
    features x 2500 other features giving us 3 million plus features which is WAY TOO MUCH.

  - Neurons and the Brain
    One learning algorithm in the brain
    - Support: 
      + google "Roe et al., 1992"
        - Summary: If you cut the wires from the ear to the auditory cortex and rewire the optic nerve to the
        auditory cortex, then the auditory cortex learns to see. 
      + google "Metin & Frost, 1989"
        - Summary: If you make the wires from the optic nerve connect to the somatosensory cortex then the 
        somatosensory cortex learns to see.
    - Reasoning: If different parts of the neocortex (contains auditory cortex, somatosensory, and others..)
    can be given new input and learn to process this new input, then we can guess there is a single learning 
    algorithm in all parts of the neocortex. 