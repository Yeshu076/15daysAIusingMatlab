clear;
clc;
close all;
load fisheriris
Features=meas;
Class=species
Features=array2table(Features);
Features.Classa=Class;
% classificationLearner
[trainedClassifier, validationAccuracy] = trainClassifier(Features);

save trainedClassifier trainedClassifier;
