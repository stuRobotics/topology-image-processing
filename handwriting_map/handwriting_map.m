close all;
clear;
clc;

A=imread('handwriting_map.png');
% A=imread('handwriting_map2.png');
% A=imread('handwriting_map3.png');
% A=imread('handwriting_map4.png');
% ��ȡͼƬ

thresh=graythresh(A);
figure(1);
title('�Ҷ�ͼ');
imshow(A);
% ת���ɻҶ�ͼ

BW2 =im2bw(A,thresh);
figure(2);
imshow(BW2);
% ���Ҷ�ͼ���ж�ֵ��

BW3 = bwmorph(BW2,'remove');
figure(3);
imshow(BW3);
% ��ͼ���еı߽���ȡ����

BW4 = bwmorph(BW2,'skel',Inf);
figure(4);
imshow(BW4);
% ��ͼ��ĹǼ���ȡ����

BW5 = bwmorph(BW4,'branchpoints');
figure(5);
imshow(BW5);
% ��ͼ��Ǽܵķ�֧����ȡ����

BW6 = bwmorph(BW4,'endpoints');
figure(6);
imshow(BW6);
% ��ͼ��Ǽܵ��յ���ȡ����