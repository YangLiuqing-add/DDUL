## Demo code for:

# Unsupervised 3D Random Noise Attenuation Using Deep Skip Autoencoder  
By [Liuqing Yang](https://www.researchgate.net/profile/Liuqing-Yang-22), [Shoudong Wang](https://www.researchgate.net/profile/Shoudong-Wang-2), [Xiaohong Chen](https://www.cup.edu.cn/geophysics/szdw/gccrc/155636.htm), [Omar M. Saad](https://www.researchgate.net/profile/Omar-M-Saad), [Wei Chen](https://www.researchgate.net/profile/Wei_Chen285), [Yapo Abolé Serge Innocent Oboué](https://www.researchgate.net/profile/Yapo-Abole-Serge-Innocent-Oboue-2), [Yangkang Chen](https://www.researchgate.net/profile/Yangkang-Chen-2)

### Table of Contents
0. [Introduction](#introduction)
0. [Citation](#citation)
0. [Models](#models)
0. [Results](#results)

### Introduction

This repository contains an original model (DDUL) described in the paper "Unsupervised 3-D Random Noise Attenuation Using Deep Skip Autoencoder"(https://www.researchgate.net/publication/353767378_Unsupervised_3-D_Random_Noise_Attenuation_Using_Deep_Skip_Autoencoder?_sg=iUcq2S4Ixsvk7SH9fAI4T2pUP36OZURMhy8YVpji6zPdtVT3-l645LKDms6CvS-47hIFJxqH498VXlafy-PvAsH_4ESCncnw9ih_ry76.YSf6wDw0rKyNmd9LmExeYF5QaiYeAwOdSZE09CxoIn7B9cbJmAL_JR8XGyH-oh0FK9gqUVEVaZ7NQanH1ARxbA). DDUL is inspired by "A fully-unsupervised and highly-generalized deep learning approach for random noise suppression"(https://www.researchgate.net/publication/347507607_A_fully-unsupervised_and_highly-generalized_deep_learning_approach_for_random_noise_suppression)


A test package including a test dataset and the trained model.  

For 2D seismic data 
First, run "Step1_Patching.m" in Matlab. 
Second, run "Step2_DDUL.ipynb" in Python. 
Third, run "Step3_UnPatching.m" in Matlab. 

For 3D seismic data 
First, run "Step1_Patching_3D.m" in Matlab. 
Second, run "Step2_DDUL.ipynb" in Python. 
Third, run "Step3_UnPatching_3D.m" in Matlab.  

In Matlab, you should chose the 0 or 1 to select synthetic or field data. In Python, you should chose the Input_patches of 2D/3D synthetic or field data.

References:

Y. Chen, 2020, “Fast dictionary learning for noise attenuation of multidimensional seismicdata,”Geophysical Journal International, vol. 221, no. 3, pp. 1717–1727, 

O. M. Saad and Y. Chen, 2020, “A  fully–unsupervised  and  highly-generalized  deep  learning  approach  forrandom  noise  suppression,”Geophysical Prospecting,  pp.  doi:  10.1111/1365–2478.13 062, 202

