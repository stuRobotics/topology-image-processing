close all;
clear;
clc;

A=imread('handwriting_map.png');
% A=imread('handwriting_map2.png');
% A=imread('handwriting_map3.png');
% A=imread('handwriting_map4.png');
% 读取图片

thresh=graythresh(A);
figure(1);
title('灰度图');
imshow(A);
% 转化成灰度图

BW2 =im2bw(A,thresh);
figure(2);
imshow(BW2);
% 将灰度图进行二值化

BW3 = bwmorph(BW2,'remove');
figure(3);
imshow(BW3);
% 将图像中的边界提取出来

BW4 = bwmorph(BW2,'skel',Inf);
figure(4);
imshow(BW4);
% 将图像的骨架提取出来

BW5 = bwmorph(BW4,'branchpoints');
figure(5);
imshow(BW5);
% 将图像骨架的分支点提取出来

BW6 = bwmorph(BW4,'endpoints');
figure(6);
imshow(BW6);
% 将图像骨架的终点提取出来