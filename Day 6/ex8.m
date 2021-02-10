close all;
clear;
figure;
I = imread('chess.jpg');
I=rgb2gray(I);
corners = detectMinEigenFeatures(I);
imshow(I); hold on;
plot(corners);
