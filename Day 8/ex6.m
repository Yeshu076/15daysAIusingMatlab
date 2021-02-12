clear;
load trainedClassifier;
load fisheriris;
Inputdata=meas(130,:);
RecognizedClass=predict(trainedClassifier.ClassificationKNN,Inputdata);
disp(RecognizedClass);