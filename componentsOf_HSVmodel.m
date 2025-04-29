RGB = reshape(ones(64,1) * reshape(jet(64),1,192), [64,64,3]);

HSV = rgb2hsv(RGB); 
H = HSV(:,:,1); % component H of image
S = HSV(:,:,2); % component S of image
V = HSV(:,:,3); % component V of image

subplot(2,2,1), imshow(H)
subplot(2,2,2), imshow(S)
subplot(2,2,3), imshow(V)
subplot(2,2,4), imshow(RGB)