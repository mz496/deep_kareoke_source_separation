# Deep Karaoke source code

Instructions for initial use:
1. Download the MedleyDB Sample dataset, name the folder `MedleyDB_sample`, and put it in the same folder as these files.
2. Add the folder with these files to the MATLAB path or put these directly in the MATLAB folder.
3. Run `runtest.m`

# Todo list

* [In progress] Grab a ton of (100?) a cappella and instrumental pairs off YouTube with youtube-dl
* Mix each pair and (probably?) convert each one from stereo to mono
* Translate each function to Python (numpy, TensorFlow), verify that it works i.e. produces the same output on the sample data
* Set up TensorFlow on AWS EC2
* Check how long it takes to learn one song on the AWS EC2 instance
* Put the new dataset on AWS and train the NN on a proportion of data that will finish reasonably fast (80% if it's already fast)
* Run trained NN and the nonnegative matrix factorization methods on the rest of the data using the same methods as the paper
* Do statistical analysis using the same methods as the paper
* Write script, record video
* Publish video to YouTube
* Write report using guidelines on Piazza

# Original Readme

This package contains the code for comparing the neural network and supervised nmf audio source separation methods as described in our article:

A. J. Simpson, G. Roma and M.D. Plumbley, "Deep Karaoke: Extracting Vocals from Musical Mixtures Using a Convolutional Deep Neural Network," in Proceedings of the International Conference on Latent Variable Analysis and Signal Separation (LVA/ICA), Liberec, Czech Republic, 2015, 429-436.

Please cite it if you use this code.

**Requirements:**
- Matlab 2014
- Matlab toolboxes: jsonlab, Deep Learning Toolbox[1], BSSEval
- Lots of RAM and patience.

[1] R. B. Palm, "Prediction as a candidate for learning deep hierarchical models of data". Master thesis. 2012. (Note that we made a slight modification on the sigmoid function, as noted in the paper. This change is reflected in the file dk_dl_toolbox.diff).

To get started open test.m
