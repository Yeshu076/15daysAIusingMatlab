clc;
clear;
close all;
a=imread('cameraman.tif');
a=im2bw(a);
b=imcomplement(a);

subplot(1,2,1);imshow(a);
subplot(1,2,2);imshow(b);