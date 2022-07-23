## Demo code for:


![GitHub last commit](https://img.shields.io/github/last-commit/YangLiuqing-add/DDUL?style=plastic)    
![GitHub stars](https://img.shields.io/github/stars/YangLiuqing-add/DDUL?style=social)
![GitHub followers](https://img.shields.io/github/followers/DDUL?style=social)
![GitHub forks](https://img.shields.io/github/forks/YangLiuqing-add/DDUL?style=social)
![GitHub watchers](https://img.shields.io/github/watchers/YangLiuqing-add/DDUL?style=social)
![Twitter Follow](https://img.shields.io/twitter/follow/YangLiuqing-add?style=social)

[[Paper]](https://ieeexplore.ieee.org/document/9508496)
[[Demo code]](https://github.com/YangLiuqing-add/DDUL/blob/main/Model/Step2_DDUL.ipynb)
# Unsupervised 3D Random Noise Attenuation Using Deep Skip Autoencoder  

By [Liuqing Yang](https://www.researchgate.net/profile/Liuqing-Yang-22), [Shoudong Wang](https://www.researchgate.net/profile/Shoudong-Wang-2), [Xiaohong Chen](https://www.cup.edu.cn/geophysics/szdw/gccrc/155636.htm), [Omar M. Saad](https://www.researchgate.net/profile/Omar-M-Saad), [Wei Chen](https://www.researchgate.net/profile/Wei_Chen285), [Yapo Abolé Serge Innocent Oboué](https://www.researchgate.net/profile/Yapo-Abole-Serge-Innocent-Oboue-2), [Yangkang Chen](https://www.researchgate.net/profile/Yangkang-Chen-2)

### Table of Contents
0. [Introduction](#introduction)
0. [Citation](#citation)
0. [Abstract](#abstract)
0. [Model](#model)

### Introduction

This repository contains an original model (DDUL) described in the paper "Unsupervised 3-D Random Noise Attenuation Using Deep Skip Autoencoder" (https://www.researchgate.net/publication/353767378_Unsupervised_3-D_Random_Noise_Attenuation_Using_Deep_Skip_Autoencoder), and includes a test dataset. DDUL is inspired by "A fully-unsupervised and highly-generalized deep learning approach for random noise suppression" (https://www.researchgate.net/publication/347507607_A_fully-unsupervised_and_highly-generalized_deep_learning_approach_for_random_noise_suppression). 

### Citation

If you use this model in your research, please cite:

    @article{yang2021,
     title={Unsupervised 3-D Random Noise Attenuation Using Deep Skip Autoencoder},
     author={Yang, Liuqing and Wang, Shoudong and Chen, Xiaohong and Saad, Omar M and Chen, Wei and Oboué, Yapo Abolé Serge Innocent and Chen, Yangkang},
     journal={IEEE Transactions on Geoscience and Remote Sensing},
     year={2021},
     volume={60},
     pages = {doi: 10.1109/TGRS.2021.3100455},
     publisher={IEEE}
    }     

### Abstract

Effective random noise attenuation is critical for subsequent processing of seismic data, such as velocity analysis, migration, and inversion. Thus, the removal of seismic random noise with an uncertainty level is meaningful. Attenuating 3-D random noise in a supervised way based on deep learning (DL) is challenging because clean labels are difficult to obtain. Therefore, it is necessary to develop an adaptive unsupervised-based method for random noise attenuation. In this article, we propose a deep-denoising unsupervised learning (DDUL) network to attenuate random noise in 2-D/3-D seismic data. A patching technique is used to split 2-D/3-D seismic data into several patches to be fed into the network, which helps to expand the number of samples for training. We use the fully symmetrical structure of the autoencoder to construct the network. In each corresponding encoder and decoder layer, skip connections are added to enhance the learning of seismic data features. We construct three blocks to extract waveform features in seismic data, i.e., encoder, decoder, and skip blocks. Among them, the skip is connected between the encoder and decoder blocks of each hidden layer. The use of multiple blocks not only improves the network’s ability to extract seismic data features but also solves the problem of excessive training parameters caused by hidden layer stacking. Five 2-D/3-D synthetic and field seismic datasets are used to test the denoising performance of our proposed method. The denoising results demonstrate that our proposed method has good signal-preserving and noise attenuation capabilities in real-world applications.

### Model

The use of DDUL: 

0. For 2D seismic data:
 	- First, run "Step1_Patching.m" in Matlab. 
 	- Second, run "Step2_DDUL.ipynb" in Python. 
 	- Third, run "Step3_UnPatching.m" in Matlab. 

0. For 3D seismic data: 
 	- First, run "Step1_Patching_3D.m" in Matlab. 
 	- Second, run "Step2_DDUL.ipynb" in Python. 
 	- Third, run "Step3_UnPatching_3D.m" in Matlab.  

**Note**

In Matlab, you should chose the 0 or 1 to select synthetic or field data. In Python, you should chose the Input_patches of 2D/3D synthetic or field data. It is important that yc_patch.m, yc_patch_inv.m, yc_patch3d.m, and yc_patch3d_inv.m come from "Fast dictionary learning for noise attenuation of multidimensional seismicdata", and introduced in detail in (https://github.com/chenyk1990/reproducible_research).






