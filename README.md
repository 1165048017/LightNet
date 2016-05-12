# LightNet: A Versatile, Standalone Matlab-based Environment for Deep Learning

![The result](LightNet.png)

LightNet is a lightweight, versatile and purely Matlab-based deep learning framework. The aim of the design is to provide an easy-to-understand, easy-to-use and efficient computational platform for deep learning research. The implemented framework supports major deep learning architectures such as the Multilayer Perceptron Networks (MLP), Convolutional Neural Networks (CNN) and Recurrent Neural Networks (RNN). The framework also supports both CPU and GPU for computation and the switch between them is straightforward. Different applications in computer vision, natural language processing and robotics are demonstrated as experiments.

## How to use LightNet

Run the RunAll.m Matlab script.  
Read the latest documentation here:  
http://arxiv.org/abs/1605.02766  
Have fun!  


If you find our work useful please cite it as:  

@article{ye2016lightnet,  
  title={LightNet: A Versatile, Standalone Matlab-based Environment for Deep Learning},  
  author={Ye, Chengxi and Zhao, Chen and Yang, Yezhou and Fermuller, Cornelia and Aloimonos, Yiannis},  
  journal={arXiv preprint arXiv:1605.02766},  
  year={2016}  
}  




## Major functions in LightNet

adagrad: implementation of the Adagrad algorithm.  
adam: implementation of the Adam algorithm.  
fast_conv_layer: implementation of the convolution layer.  
fast_mlp_layer: implementation of linear perceptron layer.  
generate_output_filename: generate output filename based on the current parameter settings.  
im2col_ln: customized im2col function used in the pooling layer.  
Main_Template: a template script used to train CNN and MLP networks.  
maxpool: implementation of the max-pooling layer.  
net_bp: implementation of the back propagation process which is used in CNN and MLP networks.  
net_ff: implementation of the feed forward process which is used in CNN and MLP networks.  
pad_data: a padding layer which is used in CNN.  
relu: implementation of the rectified linear unit function.  
rmsprop: implementation of the RMSProp algorithm.  
select_learning_rate: implementation of the Selective-SGD algorithm that automatically selects the optimal learning rate at the beginning or in the middle of the training.  
sgd: implementation of the stochastic gradient descent algorithm with momentum.  
sigmoid_ln: implementation of the sigmoid layer.  
tanh_ln: implementation of the tanh layer.  
test_net: running the network in the testing mode to evaluate the current parameters.  
train_net: running the network in the training mode to evaluate and calculate the loss and gradients.  
TrainingScript: a training template for CNN and MLP networks.  
softmax: implementation of the softmax layer.  
softmaxlogloss: implementation of the softmax log loss layer .  
SwitchHardware: a switch function between CPU and GPU.  



