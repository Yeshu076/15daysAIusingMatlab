clc;clear;
imds = imageDatastore('database','IncludeSubfolders',true,...
      'LabelSource','foldernames');
for i = 1:150         % Read images using a for loop
   Imagedata = readimage(imds,i);
   trainingFeatures(i,:)= extractHOGFeatures(Imagedata,'CellSize',[8 8]);

end
ImageData=array2table(trainingFeatures);
ImageData.label= imds.Labels;

% classificationLearner;
[trainedClassifier, validationAccuracy] = trainClassifier(ImageData)
save trainedClassifier trainedClassifier;
msgbox('Training Completed');
