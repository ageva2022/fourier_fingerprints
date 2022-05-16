clc 
clear

arch = imread('arch_fft.jpeg');
arch_cp = imread('arch_cp_fft.jpeg');
loop = imread('loop_fft.jpeg');
whorl = imread('whorl_fft.jpeg');

img_comp(loop,whorl);

function [percent] = img_comp(orig,comp)

    pic1 = orig;
    pic2 = comp;
    
    [x1,y1] = size(pic1);
    [x2,y2] = size(pic2);
    
    if(x1~=x2 || y1~=y2)
        disp('Images must have the same size and class.');

    else 
        diff_matrix = imsubtract(pic1,pic2);
        %diff_matrix
        k = pic1==pic2 ;   % get the equal elements 
        iwant = sum(k(:));   % total number of equal elements
        percent_similarity = iwant/(x1*y1)*100
    end
end