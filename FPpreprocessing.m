%{
code derivied from Lecturer Navid Mohammad Mirzaei's
SVD image compression code
%}
clc
clear

for i = 1:3
    
    if (i == 1)
        Y = imread('fingerprintLOOP.jpeg');
    elseif (i == 2)
        Y = imread('fingerprintWHORL.jpeg');
    else
        Y = imread('fingerprintARCH.jpeg');
    end
    
    gray = rgb2gray(Y);
    imwrite(gray,'fp.jpg');
    Z = imread('fp.jpg');
    W = rot90(Z,3);
    X = im2double(W);
    
    %figure;
    %imshow(X);
    %uncomment out above two lines to see the grayscale 
    %of the uncompressed image.
    
    [U,S,V] = svd(X);
    figure;
    r = 10; % max value for r = 400 b/c img is 400x600
    colormap('gray');
    FPimg = U(:,1:r)*S(1:r,1:r)*V(:,1:r)';
    imshow(FPimg);
    if (i == 1)
        imwrite(FPimg,'fingerprintLOOP_svd.jpg');
    elseif (i == 2)
        imwrite(FPimg,'fingerprintWHORL_svd.jpg');
    else
        imwrite(FPimg,'fingerprintARCH_svd.jpg');
    end
    % as you can see ^^^^ we're big fans of hard coding.
end
