clc;
clear;close all;
a=imread('chess.jpg');
b=rgb2gray(a);
points=  detectHarrisFeatures(b);
figure;
imshow(a);
hold on;
plot(points);

