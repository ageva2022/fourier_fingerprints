%Change input image accoirdingly
%I = imread('fingerprintARCH_svd.jpg');

for i = 1:4
    
    if (i == 1)
        I = imread('fingerprintARCH_svd.jpeg');
    elseif (i == 2)
        I = imread('fingerprintARCH_copy_svd.jpeg');
    elseif (i == 3)   
        I = imread('fingerprintWHORL_svd.jpeg');
    else
        I = imread('fingerprintLOOP_svd.jpeg');
    end

    F = fft2(I);

    F = fftshift(F); % Center FFT
    
    F = abs(F); % Get the magnitude
    F = log(F+1); % Use log, for perceptual scaling, and +1 since log(0) is undefined
    
    imshow(F,[]); % Display the result

    if (i == 1)
        imwrite(uint8(F),'arch_fft.jpeg');
    elseif (i == 2)
        imwrite(uint8(F),'arch_cp_fft.jpeg');
    elseif (i == 3)
        imwrite(uint8(F),'whorl_fft.jpeg');
    else
        imwrite(uint8(F),'loop_fft.jpeg');
    end

end