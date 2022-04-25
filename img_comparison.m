clc 
clear

arch = 'fingerprintARCH_ft.jpg';
loop = 'fingerprintLOOP_ft.jpg';
whorl = 'fingerprintWHORL_ft.jpg';

img_comp(arch,whorl);

function [percent] = img_comp(orig,comp)

    pic1 = uint8(orig);
    pic2 = uint8(comp);
    
    [x1,y1] = size(pic1);
    [x2,y2] = size(pic2);
    
    if(x1~=x2 || y1~=y2)
        disp('Images must have the same size and class.');

    else 
        imsubtract(pic1,pic2)
        k = pic1==pic2 ;   % get the equal elements 
        iwant = sum(k(:));   % total number of equal elements
        percent = iwant/(x1*y1)*100
    end
end