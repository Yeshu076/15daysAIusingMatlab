clc;
clear;
a=imread('rose.png');
b=imresize(a,[256 256]);
subplot(1,2,1);imshow(a);
subplot(1,2,2);imshow(b);
impixelinfo;
imwrite(b,'test.bmp');
