function J = unsharpFilter(I, k, alpha)
% unsharpFilter  Unsharp masking using box blur of size k x k.
%   I     : input image (RGB or grayscale), any numeric type
%   k     : kernel size (will be forced odd >= 3)
%   alpha : sharpening strength
%   J     : sharpened image, double in [0,1]

    I = im2double(I);

    % force odd kernel size >= 3
    k = round(k);
    if mod(k,2) == 0
        k = k + 1;
    end
    k = max(k, 3);

    % normalized box kernel
    h = ones(k,k) / (k^2);

    % blur per channel
    if ndims(I) == 3 && size(I,3) == 3
        Bblur = zeros(size(I));
        for c = 1:3
            Bblur(:,:,c) = conv2(I(:,:,c), h, 'same');
        end
    else
        Bblur = conv2(I, h, 'same');
    end

    % unsharp mask
    J = I + alpha * (I - Bblur);

    % clip to [0,1]
    J = max(min(J,1), 0);
end
