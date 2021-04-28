%Created by Omar M. Saad
%26-12-2020

% References: 

% [1] O. M. Saad and Y. Chen, 2020, ※Deep denoising autoencoder for seismic random noiseattenuation,§Geophysics, vol. 85, no. 4, pp. V367每V376, 
% [3] Y. Chen, 2020,※Fast dictionary learning for noise attenuation of multidimensional seismicdata,§Geophysical Journal International, vol. 221, no. 3, pp. 1717每1727, 
% [2] O. M. Saad and Y. Chen, 2020 ※A  fully每unsupervised  and  highly-generalized  deep  learning  approach  forrandom  noise  suppression,§Geophysical Prospecting,  pp.  doi:  10.1111/1365每2478.13 062, 202

% Preparing the patches for the DDUL
clc
clear 
close all

% Loading the Data 
% Synthetic or Field Example, zero for synthetic and one for field example.
select = 0;

switch select
    case 0
    load 2Dsyn_example
    % obtain the SNR of the noisy data (only valid for synthetic example)
    fprintf('The SNR of the Noisy data is %0.3f \n',yc_snr(DataClean,DataNoisy))
    case 1
    load 2Dfield_example
end

% preparing the patches where w1 and w2 are the patch size, while the s1z
% and s2z are the number of shift samples between neighbor windows. 
% The default values are w1,w2 =48,48, and s1z,s2z=1,1.
dn = DataNoisy;
w1 =48;
w2 =48;
s1z =1;
s2z =1;
dn_patch = yc_patch(dn,1,w1,w2,s1z,s2z);
% It is better to save .mat as -V 7.3 or later because the size of the generated patch is large.
save('Input_Patches_2Dsyn','dn_patch','-V7.3');






