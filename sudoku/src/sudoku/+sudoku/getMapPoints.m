function [numberImages] = getMapPoints(outputImage, hv_dots, numberSize)
% 输入：二值图像，包含有待识别的白色锚点
% 输出：所有数字图像组成的元胞
[L, num] = bwlabel(hv_dots, 4); % num >= 100
if num ~= 100
    error('suduko:getMapPoints:incorrectDotsNum', ...
        'Fail to have the expected cross dots');
end
points = zeros(num, 2);
for n = 1:num
    [row, col] = find(L==n);
    points(n,:) = [round(mean(row)), round(mean(col))];
end
points = sortrows(points, 2);
for n = 0:9
    points(10*n+1:10*n+10, :) = sortrows(points(10*n+1:10*n+10,:), 1);
end
points = reshape(points, 10, 10, 2);

numberImages = cell(9,9);
%imshow(hv);
imageSize = [numberSize, numberSize];
for r = 1:9
    for c = 1:9
        ul = points(r,c,:);
        dr = points(r+1,c+1,:);
        numberImages{r,c} = imresize(outputImage(ul(1):dr(1),ul(2):dr(2),:), imageSize);
    end
end

end

