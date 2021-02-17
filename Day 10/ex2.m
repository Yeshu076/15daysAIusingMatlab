clc;
clear;
imds = imageDatastore('Dataset','IncludeSubfolders',true,...
      'LabelSource','foldernames');

No_Of_class= numel(categories(imds.Labels));
disp(No_Of_class);

[traindata,testdata] = splitEachLabel(imds,0.7);

net=alexnet();
layers=net.Layers;

layers(23)=fullyConnectedLayer(No_Of_class);
layers(25)=classificationLayer;
maxEpochs=50;
miniBatchSize=300;
lr=0.001;
options = trainingOptions('sgdm', ...
    'LearnRateSchedule', 'none',...
    'InitialLearnRate', lr,... 
    'MaxEpochs', maxEpochs, ...
     'MiniBatchSize', miniBatchSize);




[net,info] = trainNetwork(traindata, layers,options);


save net net;




