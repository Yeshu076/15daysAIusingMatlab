clear;
load trainClassifiercancer;

load cancer_dataset;
cancerInputs=cancerInputs';
Inputdata=cancerInputs(15,:);
RecognizedClass=predict(trainClassifiercancer.ClassificationKNN,Inputdata);
disp(RecognizedClass);