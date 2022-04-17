%Change input image accoirdingly
I = imread('fingerprintWHORL_svd.jpg');

F = fft2(I);

F = fftshift(F); % Center FFT

F = abs(F); % Get the magnitude
F = log(F+1); % Use log, for perceptual scaling, and +1 since log(0) is undefined

imshow(F,[]); % Display the result

%TO DO: save the image in the script rather than doing it manually
%imwrite((F,[]),'spectrum_arch.jpg')