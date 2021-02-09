clear;
load cancer_dataset

feature=cancerInputs(:,9);

[y1] = cancerdetection(feature)
y1=vec2ind(y1);
disp(y1);