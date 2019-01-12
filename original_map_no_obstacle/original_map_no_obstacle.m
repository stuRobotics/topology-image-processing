close all;
clear;
clc;

A=imread('original_map_no_obstacle.png');
% 读取图片

thresh=graythresh(A);
figure(1);
title('灰度图');
imshow(A);
% 转化成灰度图

se = strel('disk',15);
BW = imdilate(A,se);
% BW=imerode(A,se);
figure(2);
imshow(BW);
% 腐蚀操作

% BW2 =im2bw(A,thresh);
BW2 =im2bw(BW,thresh);
figure(3);
imshow(BW2);

BW3 = bwmorph(BW2,'remove');
figure(4);
imshow(BW3);
hold on;

BW4 = bwmorph(BW2,'skel',Inf);
figure(5);
imshow(BW4);

BW5 = bwmorph(BW4,'branchpoints');
figure(6);
imshow(BW5);

BW6 = bwmorph(BW4,'endpoints');
figure(7);
imshow(BW6); 