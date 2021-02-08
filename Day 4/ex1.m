clc;
clear;
close all;
a = VideoReader('xylophone.mp4');
disp(a);
Framerate=a.FrameRate;
disp(Framerate);
Number_of_frames=a.NumFrames;
disp(Number_of_frames);
figure;
h=axes;
while hasFrame(a)
   Frame=readFrame(a);
   image(Frame,'parent',h);
   h.Visible='Off';
   pause(1/Framerate);
end
 