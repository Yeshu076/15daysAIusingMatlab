clc;
clear;
load net
 [filename, pathname] = uigetfile('*.*');
    if isequal(filename,0) || isequal(pathname,0)
       warndlg('User pressed cancel')
    else
    a=imread(strcat(  pathname,filename));
    figure;imshow(a);
    label=classify(net,a);
    disp(label);
        
    end
 
