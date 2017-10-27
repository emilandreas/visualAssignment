Irgb = imread('img1.jpg');
I = rgb2gray(Irgb);
%I = imgaussfilt(I);
points = detectHarrisFeatures(I);


imshow(I); hold on;
plot(points.selectStrongest(10));
BW1 = edge(I,'sobel');
BW2 = edge(I,'canny');

BW2 = imgaussfilt(uint8(255*BW2), 20);

figure;
imshowpair(BW1,BW2,'montage')
title('Sobel Filter                                   Canny Filter');

points = detectHarrisFeatures(BW2);
imshow(BW2); hold on;
plot(points.selectStrongest(10));