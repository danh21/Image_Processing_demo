a = imread('./Image/lukaku.jpg');
R = a(:,:,1); % component R of gray image
G = a(:,:,2); % component G of gray image
B = a(:,:,3); % component B of gray image

subplot(2, 3, 2);
imshow(a);
xlabel('a) RGB');
subplot(2, 3, 4);
imshow(R);
xlabel('b) R');
subplot(2, 3, 5);
imshow(G);
xlabel('c) G');
subplot(2, 3, 6);
imshow(B);
xlabel('d) B');