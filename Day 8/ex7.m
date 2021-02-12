clear;
clc;
load cancer_dataset
Features=cancerInputs';
Class=cancerTargets
Class=vec2ind(Class);
Class=Class';
Features=array2table(Features);
Features.Class=Class;
trainingdata=Features
% classificationLearner
[trainClassifiercancer, validationAccuracy] = trainClassifiercancer(trainingdata)
 save trainClassifiercancer trainClassifiercancer;