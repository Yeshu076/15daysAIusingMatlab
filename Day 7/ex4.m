clc;
clear;
load trainedClassifier;
[filename, pathname] = uigetfile('*.*');
ImageData=imread(strcat(pathname,filename));
testFeature= extractHOGFeatures(ImageData,'CellSize',[8 8]);
RecognizedClass=predict(trainedClassifier.ClassificationSVM,testFeature);
disp(RecognizedClass);



