I = imread('rice.png');
subplot(2,2,1);
imshow(I);
xlabel('Original Image');

G = im2bw(I,graythresh(I));
subplot(2,2,2);
imshow(G);
xlabel('Binary Image');

se= strel('disk',3);
B = imopen(G,se);
subplot(2,2,3);
imshow(B);
xlabel('Opening Image');

cc = bwconncomp(B,4);
labeled = labelmatrix(cc);
RGB_label = label2rgb(labeled,'spring','c','shuffle');
subplot(2,2,4);
imshow(RGB_label);
xlabel('Labeled Image')

cc.NumObjects
