clc;
clear;
imds = imageDatastore('database','IncludeSubfolders',true,...
      'LabelSource','foldernames');
for i = 1:150         % Read images using a for loop
   Imagedata = readimage(imds,i);
   trainingFeatures(i,:)= extractHOGFeatures(Imagedata,'CellSize',[8 8]);

end
trainingLabels= imds.Labels;
classifier=fitcecoc(trainingFeatures,trainingLabels);
save classifier classifier
msgbox('Training Completed');
