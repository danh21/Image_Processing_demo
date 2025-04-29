A = imread('coins.png');
subplot(2,2,1);
imshow(A);

subplot(2,2,2);
imhist(A);
ylim('auto');

B = histeq(A, 256);
subplot(2,2,3);
imshow(B);

subplot(2,2,4);
imhist(B);
ylim('auto');