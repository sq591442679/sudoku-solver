function numberImages = extractNumbers(im, imagePoints, numberSize)
    
    % Copyright 2018 The MathWorks, Inc.
    
    % Generate rectified puzzle
    fullWidth = 9*numberSize;
    worldPoints = [0, 0; ...
                    fullWidth, 0; ...
                    fullWidth, fullWidth; ...
                    0, fullWidth; ...
                    ];
    if length(imagePoints) == 4
        outputImage = sudoku.undistort(im, imagePoints, worldPoints);
    else % 默认该图片即为数独图片
        outputImage = imresize(im,[fullWidth,fullWidth]);
    end
    % Convert to individual number images
    %numberImages = mat2cell(outputImage, repmat(numberSize, 1, 9), repmat(numberSize, 1, 9), 3);
    hv = sudoku.getdots(outputImage);
    numberImages = sudoku.getMapPoints(outputImage, hv, numberSize);
end
    