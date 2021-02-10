clear;
close all;

I = imread('circuit.tif');
glcm = graycomatrix(I,'Offset',[2 0;0 2])
