Machine Learning
================

Definition of Machine Learning by Tom Mitchell

*"A computer program is said to learn from experience E with respect to some task T and some performance measure P, if its performance on T, as measured by P, improves with experience E."*

- folder ```imagesForExplanation``` = contains images used in other folder's README.md files for explanation

- folder ```supervisedLearning``` = teach the computer how to learn
    + "right answers" are given for each example in data
	+ classification probelem = predict discrete valued output
	+ regression = predict continuous/real-valued valued output 
	+ support vector machine allows an infinite number of features to be given as the "right answer"


- folder ```unsupervisedLearning``` = let the computer learn by itself
    + no "right answers" are given for each example in data
    + clustoring of data
    + example = clocktail party algorithm ```[W,s,v] = svd((repmat(sum(x.*x,1),size(x,1),1).*x)*x');```

- ```TODO: Reinforcement Learning```
- ```TODO: Recommender Systems```

How to use this code
====================

1. Install [Octave free here](https://db.tt/J97Im052) or [Matlab not free here](http://www.mathworks.com/products/matlab/). Octave == Matlab without the nice graphical user interface. I use octave so don't feel like you are missing anything if you 
don't have money for Matlab.

2. Fork this repository! Navigate into specific folders (made them very specific) and look at the README.md file for that
specific folder for which file to run. Enjoy!

===================================================================
Feel free to e-mail me at quinnliu@vt.edu for any questions. Enjoy!