clear all;
clc;
% Load image
img = double(imread('./img/image.bmp'));

%parameter
L = 512;

% Apply the 2D DWT using the 9/7 filters
[L1_1, H1_1, LL_1, LH_1, HL_1, HH_1] = dwt_2d_97(img);
[L1_2, H1_2, LL_2, LH_2, HL_2, HH_2] = dwt_2d_97(LL_1);
[L1_3, H1_3, LL_3, LH_3, HL_3, HH_3] = dwt_2d_97(LL_2);

% Display DWT 
figure(1);
subplot(2, 2, 1); imshow(LL_1, []); title('Approximation (LL)');
subplot(2, 2, 2); imshow(LH_1, []); title('Horizontal detail (LH)');
subplot(2, 2, 3); imshow(HL_1, []); title('Vertical detail (HL)');
subplot(2, 2, 4); imshow(HH_1, []); title('Diagonal detail (HH)');
savefig('octave1_dwt.fig');
saveas(1,'octave1_dwt.png');

figure(2);
subplot(2, 2, 1); imshow(LL_2, []); title('Approximation (LL)');
subplot(2, 2, 2); imshow(LH_2, []); title('Horizontal detail (LH)');
subplot(2, 2, 3); imshow(HL_2, []); title('Vertical detail (HL)');
subplot(2, 2, 4); imshow(HH_2, []); title('Diagonal detail (HH)');
savefig('octave2_dwt.fig');
saveas(2,'octave2_dwt.png');

figure(3);
subplot(2, 2, 1); imshow(LL_3, []); title('Approximation (LL)');
subplot(2, 2, 2); imshow(LH_3, []); title('Horizontal detail (LH)');
subplot(2, 2, 3); imshow(HL_3, []); title('Vertical detail (HL)');
subplot(2, 2, 4); imshow(HH_3, []); title('Diagonal detail (HH)');
savefig('octave3_dwt.fig');
saveas(3,'octave3_dwt.png');

% figure('Name', '3-Level DWT', 'NumberTitle', 'off');
% imshow(mat2gray(LL_3));
% title('3-Level DWT');

[out_img_3] = idwt_2d_97(LL_3, LH_3, HL_3, HH_3);
[out_img_2] = idwt_2d_97(out_img_3, LH_2, HL_2, HH_2);
[out_img_1] = idwt_2d_97(out_img_2, LH_1, HL_1, HH_1);

% Display IDWT 

figure(4);
subplot(2, 2, 1); imshow(out_img_3, []); title('octave3_idwt (LL)');
subplot(2, 2, 2); imshow(LH_2, []); title('Horizontal detail (LH)');
subplot(2, 2, 3); imshow(HL_2, []); title('Vertical detail (HL)');
subplot(2, 2, 4); imshow(HH_2, []); title('Diagonal detail (HH)');
savefig('octave3_idwt.fig');
saveas(4,'octave3_idwt.png');

figure(5);
subplot(2, 2, 1); imshow(out_img_2, []); title('octave2_idwt (LL)');
subplot(2, 2, 2); imshow(LH_1, []); title('Horizontal detail (LH)');
subplot(2, 2, 3); imshow(HL_1, []); title('Vertical detail (HL)');
subplot(2, 2, 4); imshow(HH_1, []); title('Diagonal detail (HH)');
savefig('octave2_idwt.fig');
saveas(5,'octave2_idwt.png');

figure(6);
imshow(mat2gray(out_img_1));
title('octave1_idwt');
savefig('octave1_idwt.fig');
saveas(6,'octave1_idwt.png');

% figure('Name', 'octave3_idwt', 'NumberTitle', 'off');
% imshow(mat2gray(out_img_3));
% title('octave3_idwt');
% 
% figure('Name', 'octave2_idwt', 'NumberTitle', 'off');
% imshow(mat2gray(out_img_2));
% title('octave2_idwt');
% 
% figure('Name', 'octave1_idwt', 'NumberTitle', 'off');
% imshow(mat2gray(out_img_1));
% title('octave1_idwt');

[psnr, difference] = PSNR(img, out_img_1);
display(psnr);

% 2D DWT function
function [L1, H1, LL, LH, HL, HH] = dwt_2d_97(input)

    % Define the 9/7 filters
     h = [0.037828455507; -0.023849465020; -0.110624404418; 0.377402855613;
     0.852698679009; 0.377402855613; -0.110624404418; -0.023849465020;
     0.037828455507];
 
     g = [-0.064538882629; 0.040689417609; 0.418092273222; -0.788485616406;
     0.418092273222; 0.040689417609; -0.064538882629];
     
    % Get input size
    [row col] = size(input);
    
    % Define temporary variables
    L1 = zeros(row,col/2);
    H1 = zeros(row,col/2);
    LL = zeros(row/2,col/2);
    HL = zeros(row/2,col/2);
    LH = zeros(row/2,col/2);
    HH = zeros(row/2,col/2);
    
    % Apply the 9/7 filter
    for i = 1 : row %% horizental
        %low:1/high:0
        H1(i,:) = filter(input(i,:),g,0,1); 
        L1(i,:) = filter(input(i,:),h,1,1); 
%         H1(i,:) = conv(input(i,1:2:col),g,'same');
%         L1(i,:) = conv(input(i,2:2:col),h,'same');
    end
    for j = 1 : col/2
        LL(:,j) = (filter(L1(:,j)',h,1,1))';
        HL(:,j) = (filter(H1(:,j)',h,1,1))';
        LH(:,j) = (filter(L1(:,j)',g,0,1))';
        HH(:,j) = (filter(H1(:,j)',g,0,1))';
    end
end

function [output] = syn_extesion(input,len_filter_tap)
    in_len = length(input);
    %output = zeros(1,in_len+2*len_filter_tap+1);
    output = [flip(input(2:1:2+len_filter_tap-1)), input, flip(input(in_len-len_filter_tap:1:in_len-1))];
end

function [output] = filter(input,weight,low_or_high,dwt_flag) %dwt:1/idwt:0
    %len define
    len_in = length(input);
    len_filter = length(weight) ;
    len_filter_tap = (len_filter - 1) / 2;
    if dwt_flag == 1
        len_dot = len_in/2;
    else
        len_dot = len_in;
    end
    %output
    output = zeros(1,len_dot);
    %filter function
    in_syn_extesion = syn_extesion(input,len_filter_tap);
    for i = 1 : len_dot
        if dwt_flag == 1
            output(i) = dot(in_syn_extesion( (2*i-low_or_high):1:(2*i-low_or_high)+len_filter-1),weight);%low:1/high:0
        else 
            output(i) = dot(in_syn_extesion(i:1:i+len_filter-1),weight);%low:1/high:0
        end
    end
end

function [out_img] = idwt_2d_97(LL, LH, HL, HH)

    % Define the 9/7 filters
    q = [-0.064538882629; -0.040689417609; 0.418092273222; 0.788485616406;
     0.418092273222; -0.040689417609; -0.064538882629];
    p = [-0.037828455507; -0.023849465020; 0.110624404418; 0.377402855613;
     -0.852698679009; 0.377402855613; 0.110624404418; -0.023849465020;
     -0.037828455507];
     
    % Define temporary variables
    [row col] = size(LL);
    L1_tmp1 = zeros(row*2, col);
    L1_tmp2 = zeros(row*2, col);
    L1      = zeros(row*2, col);
    H1_tmp1 = zeros(row*2, col);
    H1_tmp2 = zeros(row*2, col);
    H1      = zeros(row*2, col);
    out_img = zeros(row*2, col*2);
    
    LL_up = (upsample(LL,2));
    LH_up = (upsample(LH,2,1));
    HL_up = (upsample(HL,2));
    HH_up = (upsample(HH,2,1));
    % Apply the 9/7 filter
    for j = 1 : col
        L1_tmp1(:,j) = (filter(LL_up(:,j)',q,1,0))';
        L1_tmp2(:,j) = (filter(LH_up(:,j)',p,0,0))';
        L1(:,j) = L1_tmp1(:,j) + L1_tmp2(:,j);
        H1_tmp1(:,j) = (filter(HL_up(:,j)',q,1,0))';
        H1_tmp2(:,j) = (filter(HH_up(:,j)',p,0,0))';
        H1(:,j) = H1_tmp1(:,j) + H1_tmp2(:,j);
    end
    H1_up = upsample(H1',2,1)';
    L1_up = upsample(L1',2)';
    for i = 1 : row*2
        out_img(i,:) = filter(H1_up(i,:),p,0,0); 
        out_img(i,:) = out_img(i,:) + filter(L1_up(i,:),q,1,0); 
    end
end

function [psnr, difference] = PSNR(img, filtered_img)
    [h, w] = size(img);
    MAXI = 255;
    difference = (img - filtered_img) .^ 2;
    MSE = sum(difference, "all") / (h * w);

    psnr = 10 * log10(MAXI ^ 2 / MSE);
end

% % Row-wise filter function
% function [vl, vh] = filter(input, g, h)
%     % Get input size
%     [row col] = size(input);
%     Lg = (length(g) -1)/2;
%     Lh = (length(h) -1)/2;
%     vh = zeros(row/2,col/2);
%     vl = zeros(row/2,col/2);
%     % Apply the 9/7 filter
%     for j = 1 : col
%         if mod(j,2) == 0
%             vh(:,j/2) = conv(input(2:2:row,j),g,'same');
%             %vh(:,j/2) = convh(Lh:1:row/2+Lh-1);
%         else
%             vl(:,(j+1)/2) = conv(input(1:2:row,j),h,'same');
%             %vl(:,(j+1)/2) = convl(Lg:1:row/2+Lg-1);
%         end
%     end
% end

% 2D DWT function
% function [L1, H1, LL, LH, HL, HH] = dwt_2d_97(input)
% 
%     Define the 9/7 filters
%      h = [0.037828455507; -0.023849465020; -0.110624404418; 0.377402855613;
%      0.852698679009; 0.377402855613; -0.110624404418; -0.023849465020;
%      0.037828455507];
%  
%      g = [-0.064538882629; 0.040689417609; 0.418092273222; -0.788485616406;
%      0.418092273222; 0.040689417609; -0.064538882629];
%      
%     Get input size
%     [row col] = size(input);
%     
%     Define temporary variables
%     L1 = zeros(row,col/2);
%     H1 = zeros(row,col/2);
%     LL = zeros(row/2,col/2);
%     HL = zeros(row/2,col/2);
%     LH = zeros(row/2,col/2);
%     HH = zeros(row/2,col/2);
%     
%     Apply the 9/7 filter
%     for i = 1 : row
%         H1(i,:) = conv(input(i,2:2:col),g,'same');
%         L1(i,:) = conv(input(i,1:2:col),h,'same');
%     end
%     for j = 1 : col/2
%         LL(:,j) = conv(L1(1:2:row,j),h,'same');
%         HL(:,j) = conv(H1(2:2:row,j),h,'same');
%         LH(:,j) = conv(L1(1:2:row,j),g,'same');
%         HH(:,j) = conv(H1(2:2:row,j),g,'same');
%     end
% end