clc;
clear;
close all;
net=darknet19;
imds = imageDatastore('images','IncludeSubfolders',true,...
       'LabelSource','foldernames');
   disp(imds);
sz=net.Layers(1, 1).InputSize ;
augImds=augmentedImageDatastore(net.Layers(1, 1).InputSize(1:2),imds);

%Step 2 -Feature Extraction
 Labels=imds.Labels;
% count the number of images
numClass=3;
% feature extraction with the pre-trained network
feature=squeeze(activations(net,augImds,'avg1'));

figure;
% conduct a principal component analysis for the dimension reduction
A=pca(feature,"Centered",true);

gscatter(A(:,1),A(:,2),Labels)


