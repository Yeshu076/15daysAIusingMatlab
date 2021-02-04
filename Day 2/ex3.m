clc;
clear;
imds = imageDatastore('data');
Noofimages=numel(imds.Files);
for i = 1:Noofimages        % Read images using a for loop
   a = readimage(imds,i);
   figure;
   imshow(a);
   
end
 
