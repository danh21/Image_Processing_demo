orgImg = imread('text.png');
subplot(1, 3, 1);
imshow(orgImg);
xlabel('Original Image');

SE1 = [0 1 0; 1 1 1; 0 1 0];
dilatedImg = imdilate(orgImg, SE1);
subplot(1, 3, 2);
imshow(dilatedImg);
xlabel('Dilated Image');

SE2 = strel('line' ,11, 90);
erodedImg = imerode(erodedImg, SE2);
subplot(1, 3, 3);
imshow(erodedImg);
xlabel('Eroded Image');