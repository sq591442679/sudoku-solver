function hv = getdots(outputImage)
    outputImage = rgb2gray(outputImage);
    fim = im2double(outputImage);
    se = strel('disk',ceil(min(size(outputImage))/20));
    bim = imclose(outputImage, se);
    bfim = im2double(bim);
    nim = imdivide(fim, bfim);
    %imshow(nim)
    bw = imbinarize(nim, 'adaptive', 'Sensitivity', 0.6);
    %n = graythresh(nim);
    %bw = imbinarize(nim, n);
    %imshow(bw)
    thresholded = ~bw;
    hse = strel('line',2,0);
    %hth = imerode(thresholded,hse);
    hth = imdilate(thresholded,hse);
    vse = strel('line',2,90);
    hth = imdilate(hth,vse);
    rec = strel('rectangle', [1,100]);
    recim = imopen(hth, rec);
    recim = imdilate(recim, rec);
    vrec = strel('rectangle', [100,1]);
    vrecim = imopen(hth, vrec);
    vrecim = imdilate(vrecim, vrec);
    hv = vrecim & recim;
end

