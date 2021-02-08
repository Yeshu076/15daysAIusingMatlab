clc;
clear;
% Construct a webcam object
camObj = webcam(4);
% Preview a stream of image frames.
preview(camObj);
while(1)
    % Acquire and display a single image frame.
    img = snapshot(camObj);
    img=rgb2gray(img);
    edgeImage=edge(img,'Canny');
    edgeImage=edgeImage.*255;
    OutImage=[img edgeImage];
    imshow(OutImage);
 
end