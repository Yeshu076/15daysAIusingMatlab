clc;
clear;
a=imread('1.bmp');
figure;
[hog1, visualization] = extractHOGFeatures(a,'CellSize',[4 4]);
[hog2, visualization2] = extractHOGFeatures(a,'CellSize',[2 2]);
[hog1, visualization3] = extractHOGFeatures(a,'CellSize',[8 8]);

plot(visualization);
figure;
plot(visualization2);

figure;
plot(visualization3);
