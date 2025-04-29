initImg = imread('./Image/lukaku.jpg');

if length(size(initImg)) == 3       % color img          
    grayImg = rgb2gray(initImg);
else                                % gray img
    grayImg = initImg;
end
resizedImg = imresize(initImg, [480, 640]);

subplot(1, 3, 1);
imshow(initImg);
xlabel('a) Original Image');
subplot(1, 3, 2);
imshow(grayImg);
xlabel('b) Gray Image');
subplot(1, 3, 3);
imshow(resizedImg);
xlabel('c) Resized Image');

imwrite(grayImg, './Image/gray_lukaku.jpg');
imwrite(resizedImg, './Image/resized_lukaku.jpg')