f1 = imread('cameraman.tif');
f = double(f1)/255;

gamma1 = 2.5;
g1 = 255 * f.^gamma1;
g1 = uint8(g1);

gamma2 = 0.4;
g2 = 255 * f.^gamma2;
g2 = uint8(g2);

g3 = (double(g2)/255).^gamma1;
g3 = 255 * g3;
g3 = uint8(g3);

subplot(2,2,1)
imshow(f1)
xlabel('(a) Original image')
subplot(2,2,2)
imshow(g1)
xlabel('(b) Original image on a CRT')
subplot(2,2,3)
imshow(g2)
xlabel('(c) Adjust by gamma = 0.4')
subplot(2,2,4)
imshow(g3)
xlabel('(d) Image after adjusting on the CRT')