clc;
clear;
% Construct a webcam object
camObj = webcam(4);
% Preview a stream of image frames.
% preview(camObj);
while(1)
    % Acquire and display a single image frame.
    img = snapshot(camObj);
    Noisyimg = imnoise(img,'salt & pepper', 0.12);
    [R G B]=imsplit(Noisyimg);
    Filetrimgr=medfilt2(R ,[3 3]);
    Filetrimgg=medfilt2(G ,[3 3]);
    Filetrimgb=medfilt2(B ,[3 3]);
    Filetrimg(:,:,1)=Filetrimgr;
    Filetrimg(:,:,2)=Filetrimgg;
    Filetrimg(:,:,3)=Filetrimgb;
    OutImage=[img Noisyimg Filetrimg];
    imshow(OutImage);
end