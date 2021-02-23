close all;
clear;
load frcnn.mat;

[filename, pathname] = uigetfile('*.*', 'Pick a MATLAB code file'); 

Inputimage=imread(strcat(pathname,filename));

[bbox, score, label] = detect(frcnn, Inputimage);

[score, idx] = max(score);
bbox = bbox(idx, :); 
figure;
detectedImg = insertObjectAnnotation(Inputimage, 'rectangle', bbox,'FACE');
imshow(detectedImg);



