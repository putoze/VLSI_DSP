% Load image
img = imread('./img/image.bmp');

% Define the 9/7 filters
h = [0.026748757411, -0.016864118443, -0.078223266529, 0.266864118443, 0.602949018236, 0.266864118443, -0.078223266529, -0.016864118443, 0.026748757411];
g = [-0.045635881557, 0.028771763114, 0.295635881557, -0.557543526229, 0.295635881557, 0.028771763114, -0.045635881557];

% Apply the 2D DWT using the 9/7 filters
[cA, cH, cV, cD] = dwt_2d_97(img, h, g);

% Display the results
figure;
subplot(2, 2, 1); imshow(cA, []); title('Approximation (LL)');
subplot(2, 2, 2); imshow(cH, []); title('Horizontal detail (LH)');
subplot(2, 2, 3); imshow(cV, []); title('Vertical detail (HL)');
subplot(2, 2, 4); imshow(cD, []); title('Diagonal detail (HH)');

% 2D DWT function
function [cA, cH, cV, cD] = dwt_2d_97(image, h, g)
    % Get image size
    [M, N] = size(image);
    
    % Define temporary variables
    temp = zeros(M, N);
    cA = zeros(M/2, N/2);
    cH = zeros(M/2, N/2);
    cV = zeros(M/2, N/2);
    cD = zeros(M/2, N/2);
    
    % Apply row-wise filtering
    for i = 1:M
        temp(i, :) = row_filter(image(i, :), h, g);
    end
    
    % Apply column-wise filtering
    for j = 1:N/2
        cA(:, j) = col_filter(temp(:, 2*j-1:2*j), h, g);
        cH(:, j) = col_filter(temp(:, 2*j-1:2*j), g, h);
    end
    
    % Apply row-wise filtering to the transposed matrix
    for i = 1:N/2
        temp(:, i) = row_filter(cA(:, 2*i-1:2*i)', h, g)';
        cV(:, i) = row_filter(cH(:, 2*i-1:2*i)', g, h)';
    end
    
    % Apply column-wise filtering to the transposed matrix
    for j = 1:M/2
        cD(:, j) = col_filter(temp(2*j-1:2*j, :)', g, h)';
    end
end

% Row-wise filter function
function output = row_filter(input, h, g)
    % Get input size
    n = length(input);
    
    % Apply the 9/7 filter
    input = [input(n-2:n), input, input(1:3)];
    output = (conv(input, h, 'valid') + conv(input, g, 'valid'))/2;
end