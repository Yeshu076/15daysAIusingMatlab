close all;
I = imread('chess.jpg');
I=rgb2gray(I);
corners = detectFASTFeatures(I);
imshow(I)
hold on
plot(corners)
