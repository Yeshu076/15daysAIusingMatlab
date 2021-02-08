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
str='.bmp';
for i=1:Number_of_frames
   Frame=read(a,i);
   Frame=imresize(Frame,[420 640]);
   filename=strcat(num2str(i),str);
   imwrite(Frame,filename);
   image(Frame,'parent',h);
   h.Visible='Off';
   pause(1/Framerate);
end
 