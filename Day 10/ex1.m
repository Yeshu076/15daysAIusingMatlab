clc;
clear;
close all;
% Construct a webcam object
camObj = webcam(4);
% Preview a stream of image frames.
preview(camObj);
net=alexnet;
figure;
while(1)

% Acquire and display a single image frame.
img = snapshot(camObj);
img=imresize(img,[227 227]);
label=classify(net,img);
label=char(label);
imshow(img);
disp(label);

end