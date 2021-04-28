function [ output_args ] = imagesc_cyk( data,pclip,mode)
%imagesc_cyk
%   fast plot data using pclip
% Input:
%   data: input data
%   pclip: clip value (percential or exact)
%   mode=1? pclip; mode=2: clip
%   
if nargin==1
   pclip=99;
   mode=1;%using pclip;
end

if nargin==2
   mode=1; 
end

% mi=min(min(abs(data)));
% ma=max(max(abs(data)));

if mode==1
 t=prctile(abs(data(:)),pclip);    
%  figure;
imagesc(data);caxis([-t,t]);colormap(seis);
else
% figure;
imagesc(data);caxis([-pclip,pclip]);colormap(seis);

end

end

