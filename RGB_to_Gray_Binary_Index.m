f = imread('./Image/lukaku.jpg');
fg = rgb2gray(f);
fi = rgb2ind(f,256);
fb = im2bw(f);

subplot(2,2,1)
imshow(f)
xlabel('(a) RGB Image')
subplot(2,2,2)
imshow(fg)
xlabel('(b) Gray Image')
subplot(2,2,3)
imshow(fi)
xlabel('(c) Index Image')
subplot(2,2,4)
imshow(fb)
xlabel('(d) Binary Image')