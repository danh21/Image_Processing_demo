a = imread('./Image/mu.png');
R = a(:,:,1);
G = a(:,:,2);
B = a(:,:,3);

[m,n] = size(B);
for i = 1:m
    for j = 1:n
        if ((R(i,j) > 180) && (G(i,j) < 20) && (B(i,j) < 20)) % red
            b(i,j) = 1; % red -> white
        else
            b(i,j) = 0; % the rest -> black
        end
    end
end

subplot(1, 2, 1);
imshow(a);
subplot(1, 2, 2); 
imshow(b);