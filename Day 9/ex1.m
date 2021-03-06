clc;
clear;
%Step  1
imds = imageDatastore('dataset','IncludeSubfolders',true,...
       'LabelSource','foldernames');

disp(imds);
%Step 2
[traindata,tesdata] = splitEachLabel(imds,0.7);
%Step 3
layers=[ imageInputLayer([128 128 3])
        convolution2dLayer(5,20)
        reluLayer
        maxPooling2dLayer(2, 'Stride', 2)
        fullyConnectedLayer(2);
        softmaxLayer
        classificationLayer
        ];
 %Step 4
 options = trainingOptions('sgdm', ...
            'Plots', 'training-progress', ...
            'LearnRateSchedule', 'piecewise', ...
            'LearnRateDropFactor', 0.2, ...
            'LearnRateDropPeriod', 5, ...
            'MiniBatchSize', 300);
 %Step 5
[net,info] = trainNetwork(traindata ,layers, options); 

save net net;

helpdlg('Training Completed');
        
 
 
    
    