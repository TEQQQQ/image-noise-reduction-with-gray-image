grayImg = imread('cameraman.tif');

rgbImg = ind2rgb(grayImg, gray(256));

imshow(rgbImg);

x = imnoise(rgbImg,'salt & pepper', 0.30);
red_channel = x(:,:,1);
green_channel = x(:,:,2);
blue_channel = x(:,:,3);
red_channel = ordfilt2(red_channel,15,ones(5,5));
green_channel = ordfilt2(green_channel,15,ones(5,5));
blue_channel = ordfilt2(blue_channel,15,ones(5,5));

y = cat(3,red_channel,green_channel,blue_channel);

subplot(2,1,1);imshow(x);title('noisy form');
subplot(2,1,2);imshow(y);title('after noisty');