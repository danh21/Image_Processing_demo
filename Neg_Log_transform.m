f1 = imread('trees.tif');
f = double(f1);

g_neg = 255 - f;
g_neg = uint8(g_neg);

g_log = 255/log2(256) * log2(f+1);
g_log = uint8(g_log);

subplot(1,3,1)
imshow(f1)
xlabel('(a) Original image')
subplot(1,3,2)
imshow(g_neg)
xlabel('(b) Negative Image')
subplot(1,3,3)
imshow(g_log)
xlabel('(c) Image with the log function')