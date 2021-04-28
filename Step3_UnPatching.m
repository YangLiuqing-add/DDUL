%Created by Omar M. Saad
%26-12-2020

% References: 

% [1] O. M. Saad and Y. Chen, 2020, ※Deep denoising autoencoder for seismic random noiseattenuation,§Geophysics, vol. 85, no. 4, pp. V367每V376, 
% [3] Y. Chen, 2020,※Fast dictionary learning for noise attenuation of multidimensional seismicdata,§Geophysical Journal International, vol. 221, no. 3, pp. 1717每1727, 
% [2] O. M. Saad and Y. Chen, 2020 ※A  fully每unsupervised  and  highly-generalized  deep  learning  approach  forrandom  noise  suppression,§Geophysical Prospecting,  pp.  doi:  10.1111/1365每2478.13 062, 202


% UnPAtching the Obtained output Patches of the DDUL
clc
clear 
close all

% Loading the Data and the Output Patches of the DDUL
% Synthetic or Field Example, zero for synthetic and one for field example.
select =0;

switch select 
    case 0 
    load 2Dsyn_example  
    figure;yc_imagesc(DataClean);
    title('Clean Data')
    figure;yc_imagesc(DataNoisy-DataClean);
    title('Noise Section')
    case 1
    load 2Dfield_example1
end
load Input_Patches_2Dsyn
load Output_Patches_2Dsyn
% UnPatching
[n1,n2]=size(DataNoisy);
w1 =48;
w2 =48;
s1z =1;
s2z =1;
out1=yc_patch_inv(out1',1,n1,n2,w1,w2,s1z,s2z);


switch select
    case 0
    %obtain the SNR of the noisy data 
    fprintf('The SNR of the Noisy data is %0.3f \n',yc_snr(DataClean,DataNoisy))
    %obtain the SNR of the denoised signal corresponding to the DDUL. 
    fprintf('The SNR of the DDUL is %0.3f \n',yc_snr(DataClean,out1))
end

figure;yc_imagesc(DataClean);axis off;
title('Clean data')
figure;yc_imagesc(DataNoisy);axis off;
title('Noisy data')
figure;yc_imagesc(out1);axis off;
title('Denoised Signal (DDUL)')
figure;yc_imagesc(DataNoisy-out1);axis off;
title('Removed Noise Section (DDUL)')
