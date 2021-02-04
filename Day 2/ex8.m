clc;
clear;
close all;
a=imread('cameraman.tif');
J = imnoise(a,'salt & pepper', 0.02);
c=medfilt2(J,[3 3]);

subplot(1,3,1);imshow(a);
subplot(1,3,2);imshow(J);
subplot(1,3,3);imshow(c);
