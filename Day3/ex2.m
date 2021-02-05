clc;
clear;close all;
detector=vision.CascadeObjectDetector('EyePairBig');
facedetector=vision.CascadeObjectDetector;
nosedetector=vision.CascadeObjectDetector('Nose');

a=imread('3.jpg');
imshow(a);
BoundingBox= step(detector,a);
BoundingBoxface=step(facedetector,a);
BoundingNose=step(nosedetector,a);
I2 = imcrop(a,BoundingBox);
imwrite(I2,'EYE.BMP');
RGB = insertObjectAnnotation(a,'rectangle',BoundingBox,'Eye');
RGB = insertObjectAnnotation(RGB,'rectangle',BoundingBoxface,'Face');
RGB = insertObjectAnnotation(RGB,'rectangle',BoundingNose,'Nose');

figure;
imshow(RGB);
impixelinfo;