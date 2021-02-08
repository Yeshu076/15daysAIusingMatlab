clc;
clear;
facedetector=vision.CascadeObjectDetector;
camObj = webcam(4);
% Preview a stream of image frames.
preview(camObj);
while(1)
   
% Acquire and display a single image frame.
    img = snapshot(camObj);
    BoundingBoxface=step(facedetector,img);
    if isempty(BoundingBoxface)
       disp('Human is not detected'); 
    else
       disp('Human is detected'); 
    end
end