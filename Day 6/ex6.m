I = imread('cameraman.tif');
regions = detectMSERFeatures(I);
% inside the returned 'regions' object
figure
imshow(I)
hold on
plot(regions, 'showPixelList', true, 'showEllipses', false)
