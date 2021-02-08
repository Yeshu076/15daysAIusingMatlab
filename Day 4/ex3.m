clear;
clc;
close all;
vidObj = VideoWriter('Output.mp4','MPEG-4');
open(vidObj);
Framerate=30
No_of_frames=100;
str='.bmp';
figure;
h=axes;
for i=1:No_of_frames
    filename=strcat(num2str(i),str);
    Frame=imread(filename);
    image(Frame,'parent',h);
    h.Visible='Off';
    currFrame = getframe(gca);
    writeVideo(vidObj,currFrame);
    pause(1/Framerate);
end
close(vidObj);