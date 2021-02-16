clc;
clear;
load net
imds = imageDatastore('dataset','IncludeSubfolders',true,...
       'LabelSource','foldernames');

disp(imds);
%Step 2
[traindata,tesdata] = splitEachLabel(imds,0.7);
[labels,err_test] = classify(net, tesdata, 'MiniBatchSize', 300);
confusionchart(tesdata.Labels,labels);
figure;
plotconfusion(tesdata.Labels,labels)
 
