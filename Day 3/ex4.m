clc;
clear;
camObj = webcam(4);
% Preview a stream of image frames.
preview(camObj);
while(1)
  % Acquire and display a single image frame.
    img = snapshot(camObj);
    msg =readBarcode(img);
    if isempty(msg)
        clc;
       disp('Barcode is not detected'); 
    else
       disp(msg); 
    end
end