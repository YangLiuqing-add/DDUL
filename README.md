## Demo code for:

# Unsupervised 3D Random Noise Attenuation Using Deep Skip Autoencoder  
By Liuqing Yang, Shoudong Wang, Xiaohong Chen, Omar M. Saad, Wei Chen, Yapo Abolé Serge Innocent Oboué, Yangkang Chen

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

