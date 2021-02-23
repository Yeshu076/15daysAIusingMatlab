clear
load frcnn.mat
camObj = webcam(4);
 % Preview a stream of image frames.
preview(camObj);
            figure;
while(1)
% Acquire and display a single image frame.
    img = snapshot(camObj);
    [bbox, score, label] = detect(frcnn, img);
    [score, idx] = max(score);
    bbox = bbox(idx, :); 
    detectedImg = insertObjectAnnotation(img, 'rectangle', bbox,'FACE');
    imshow(detectedImg);
end