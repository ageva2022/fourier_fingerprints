clc 
clear

arch = imread('arch_fft.jpeg');
arch_cp = imread('arch_cp_fft.jpeg');
loop = imread('loop_fft.jpeg');
whorl = imread('whorl_fft.jpeg');

disp('arch');
disp(size(arch));

disp('arch_cp');
disp(size(arch_cp));

disp('loop');
disp(size(loop));

disp('whorl');
disp(size(whorl));

img_comp(arch,arch_cp);

function [percent] = img_comp(orig,comp)

    pic1 = orig;
    pic2 = comp;
    
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