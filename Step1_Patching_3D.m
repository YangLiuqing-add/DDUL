%Inspired from O M. Saad, This 3D UnPatching is created by Liuqing Yang
%28-4-2021

% References: 

% [1] O. M. Saad and Y. Chen, 2020, ¡°Deep denoising autoencoder for seismic random noiseattenuation,¡±Geophysics, vol. 85, no. 4, pp. V367¨CV376, 
% [3] Y. Chen, 2020,¡°Fast dictionary learning for noise attenuation of multidimensional seismicdata,¡±Geophysical Journal International, vol. 221, no. 3, pp. 1717¨C1727, 
% [2] O. M. Saad and Y. Chen, 2020 ¡°A  fully¨Cunsupervised  and  highly-generalized  deep  learning  approach  forrandom  noise  suppression,¡±Geophysical Prospecting,  pp.  doi:  10.1111/1365¨C2478.13 062, 202



% Preparing the patches for the PATCHUNET
clc
clear 
close all

% Loading the Data 
% Synthetic or Field Example, zero for synthetic and one for field example.
select = 0;

switch select
    case 0
    load Datasets/3Dsyn_data
    % obtain the SNR of the noisy data (only valid for synthetic example)
    fprintf('The SNR of the Noisy data is %0.3f \n',yc_snr(DataClean,DataNoisy,2))
    case 1
    load 3Dfield_example
end

% preparing the patches where w1, w2, and w3 are the patch size, while the s1z, s2z, and s3z are the number of shift samples between neighbor windows. 
% The default values are w1,w2,w3 =15,15,15 and s1z,s2z,s3z=1,1,1.
dn = DataNoisy;
w1 =15;
w2 =15;
w3 =15;
s1z =1;
s2z =1;
s3z =1;
dn_patch = yc_patch3d(dn,1,w1,w2,w3,s1z,s2z,s3z);
% It is better to save .mat as -V 7.3 or later because the size of the generated patch is large.
save('Input_Patches_3Dsyn','dn_patch','-V7.3');






