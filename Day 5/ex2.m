clear;
load iris_dataset;
load net;
Feature=irisInputs(:,122);
RecognizedClass=net(Feature);
RecognizedClass=vec2ind(RecognizedClass);
disp(RecognizedClass);