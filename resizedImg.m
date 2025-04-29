f = imread('cameraman.tif');f128 = imresize(f, [128 128]);
f64 = imresize(f, [64 64]);
f32 = imresize(f, [32 32]);

subplot(2,2,1)
imshow(f)
xlabel('(a) 256x256')
subplot(2,2,2)
imshow(f128,'InitialMagnification','fit')
xlabel('(b) 128x128')
subplot(2,2,3)
imshow(f64,'InitialMagnification','fit')
xlabel('(c) 64x64')
subplot(2,2,4)
imshow(f32,'InitialMagnification','fit')
xlabel('(d) 32x32')