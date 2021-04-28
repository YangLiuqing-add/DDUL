%Improved from O M. Saad, This 3D UnPatching is created by Liuqing Yang
%28-4-2021

% References: 

% [1] O. M. Saad and Y. Chen, 2020, ※Deep denoising autoencoder for seismic random noiseattenuation,§Geophysics, vol. 85, no. 4, pp. V367每V376, 
% [3] Y. Chen, 2020, ※Fast dictionary learning for noise attenuation of multidimensional seismicdata,§Geophysical Journal International, vol. 221, no. 3, pp. 1717每1727, 
% [2] O. M. Saad and Y. Chen, 2020, ※A  fully每unsupervised  and  highly-generalized  deep  learning  approach  forrandom  noise  suppression,§Geophysical Prospecting,  pp.  doi:  10.1111/1365每2478.13 062, 202

% Preparing the patches for the DDUL
clc
clear 
close all

% Loading the Data and the 3D Output Patches of the DDUL
% Synthetic or Field Example, zero for 3D synthetic and one for 3D field example.
select =0;

switch select 
    case 0 
    load 3Dsyn_example2;
    case 1
    load Input_Patches_3Dfield1; 
end
load Input_Patches_3Dsyn2
load Output_Patches_3Dsyn2

% UnPatching

[n1,n2,n3]=size(DataNoisy);
w1 =15;
w2 =15;
w3 =15;
s1z =1;
s2z =1;
s3z = 1;
out1=yc_patch3d_inv(out',1,n1,n2,n3,w1,w2,w3,s1z,s2z,s3z);

switch select
   case 0
    % obtain the SNR of the noisy data 
    fprintf('The SNR of the Noisy data is %0.3f \n',yc_snr(DataClean,DataNoisy,2))
    % obtain the SNR of the denoised signal corresponding to the PATCHUNET. 
    fprintf('The SNR of the PATCHUNET is %0.3f \n',yc_snr(DataClean,out1,2))
end


%% 3D image %%
figure;yc_imagesc(DataClean(:,:,10))
title('Clean data')
figure;yc_imagesc(DataNoisy(:,:,10))
title('Noisy Data')
figure;yc_imagesc(out1(:,:,10));
title('Denoised Signal (DDUL)')
figure;yc_imagesc(DataNoisy(:,:,10)-out1(:,:,10))
title('Removed Noise Section (DDUL)')
