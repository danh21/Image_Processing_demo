I = imread('pout.tif');
J = imadjust(I);
K = imadjust(I,[0.3 0.7],[]);
figure;
subplot(1,3,1); imshow(I);
subplot(1,3,2); imshow(J);
subplot(1,3,3); imshow(K);

RGB1 = imread('football.jpg');
RGB2 = imadjust(RGB1,[.2 .3 0; .6 .7 1],[]);
figure;
subplot(1,2,1); imshow(RGB1); 
subplot(1,2,2); imshow(RGB2);