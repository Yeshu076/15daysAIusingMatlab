clc;
clear;
close all;
a=imread('coins.png');
figure;imshow(a);
imhist(a);
b=a > 100;
figure;imshow(b);
c=medfilt2(b,[5 5]);
figure;imshow(c);
[L  num]= bwlabel(c,4)
d=uint8(c);

e=d.*a;

figure;imshow(e);

disp(num);
