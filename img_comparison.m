clc 
clear

pic1 = uint8('fingerprintARCH_ft.jpg');
pic2 = uint8('fingerprintLOOP_ft.jpg');
whorl = uint8('fingerprintWHORL_ft.jpg');
%pic4 = uint8('WHORL_FFT.jpg');
%pic5 = uint8('LOOP_FFT.jpg');
%pic6 = uint8('ARCH_FFT.jpg');
imsubtract(pic1,pic2)

[x1,y1] = size(pic1);
[x2,y2] = size(pic2);

if(x1~=x2 || y1~=y2)
    'Images must be of the same dimension';
else 
    k = pic1==pic2 ;   % get the equal elements 
    iwant = sum(k(:));   % total number of equal elements
    percentage = iwant/(x1*y1)*100
end