clc;
clear;
close all;
load iris_dataset;
Features=irisInputs;
TargetClass=irisTargets;
%Create a neural network
net=patternnet(10);
net=train(net,Features,TargetClass);
save net net;
view(net);

