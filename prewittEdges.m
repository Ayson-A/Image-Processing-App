function E = prewittEdges(Igray, T)
% prewittEdges  Prewitt edge detection with threshold.
%   Igray : grayscale image (any numeric type)
%   T     : threshold in [0,1]
%   E     : logical edge map

    Igray = im2double(Igray);

    % Prewitt kernels
    Kx = [-1 0 1;
          -1 0 1;
          -1 0 1];

    Ky = [-1 -1 -1;
           0  0  0;
           1  1  1];

    % derivatives
    Ix = conv2(Igray, Kx, 'same');
    Iy = conv2(Igray, Ky, 'same');

    % gradient magnitude
    G = sqrt(Ix.^2 + Iy.^2);
    G = G ./ (max(G(:)) + eps);

    % threshold
    E = G > T;
end
