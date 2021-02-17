load net.mat
[filename, pathname] = uigetfile('*.*', 'Pick a input image ');
filename=strcat(pathname,filename);
im=imread(filename);
im=imresize(im,[227 227]);
label = char(classify(net,im)); % classify with deep learning
figure;
imshow(im);title(label)
