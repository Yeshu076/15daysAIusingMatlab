clear;
load Classifier;

load fisheriris;

Inputdata=meas(120,:);

RecognizedClass=predict(Classifier,Inputdata);

disp(RecognizedClass);