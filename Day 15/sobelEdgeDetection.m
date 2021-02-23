function sobelEdgeDetection() %#codegen
% Copyright 2020 The MathWorks, Inc.

%hwobj = jetson('192.168.1.10','pantech','pantech');
hwobj = jetson;
camObj = camera(hwobj,"UVC Camera (046d:0825)",[320 240]);
dispObj = imageDisplay(hwobj);
% hwobj.setDisplayEnvironment('1.0');

% Sobel kernel
kern = [1 2 1; 0 0 0; -1 -2 -1];

% Main loop
for k = 1:1000
    % Capture the image from the camera on hardware.
    img = snapshot(camObj);
    
    % Finding horizontal and vertical gradients.
    h = conv2(img(:,:,2),kern,'same');
    v = conv2(img(:,:,2),kern','same');
    
    % Finding magnitude of the gradients.
    e = sqrt(h.*h + v.*v);
    
    % Threshold the edges
    edgeImg = uint8((e > 100) * 240);
    
    % Display image.
    image(dispObj,edgeImg);
%     pause(1);
end

end