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
% Labels=imds.Labels;
% count the number of images
numClass=3;
% feature extraction with the pre-trained network
feature=squeeze(activations(net,augImds,'avg1'));

%Apply K means

C=kmeans(feature',numClass,"Start","plus");

for i=1:numClass
ithGroup=readByIndex(augImds,find(C==i));
    [len len2]=size(ithGroup);
    if i==1
        figure;
        for j=1:len
            aa=ithGroup.input{j};
            subplot(6,5,j);imshow(aa);
        end
        suptitle('1 Cluster');
    end
    
    if i==2
        figure;
        for j=1:len
            aa=ithGroup.input{j};
            subplot(6,5,j);imshow(aa);
        end
        suptitle('2 Cluster');
    end
    
    if i==3
        figure;
        for j=1:len
            aa=ithGroup.input{j};
            subplot(6,5,j);imshow(aa);
        end
        suptitle('3 Cluster');
    end
    
    
end








