function Igray = rgbToGrayLuminance(I)
% rgbToGrayLuminance Convert RGB or grayscale image to grayscale double [0,1]
% Uses the luminance model: 0.299R + 0.587G + 0.114B
    I = im2double(I);

    if ndims(I) == 3 && size(I,3) == 3
        R = I(:,:,1);
        G = I(:,:,2);
        B = I(:,:,3);
        Igray = 0.299*R + 0.587*G + 0.114*B;
    else
        Igray = I;
    end
end