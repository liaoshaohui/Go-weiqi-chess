% 围棋程序
% liaoshaohui
% 20180419——20180420
% 13698358751@qq.com
% 棋盘大小19*19，电脑自我对弈，每一手随机选点，没有提子功能等，
% 后续计划改进FindPoint函数，使选点更好，另增加形势判断功能。
% 增加GUI等，完善基本功能的，额。
% 未完善，欢迎完善
% -----------------------------------------------------------

close all
clear
clc

%% 初始化定义变量
Shoushu = 100;                      %下棋的手数 
sgf_record = zeros(2,Shoushu);      %记录每一手坐标
piece = zeros(19,19);               %棋子，-1对应黑子，0对应空，1对应白子

%% 下棋
%绘制棋盘
figure
ShowBoard(piece);
%每一手
for step = 1:Shoushu
    % 选择可着点
    [ i,j ] = FindPoint(piece,step);
    piece(i,j) = (-1)^step;
    % 显示下棋
    ShowBoard(piece);
    pause(0.1)
    % 记录当前手数的坐标
    sgf_record(1,step)=i;
    sgf_record(2,step)=j;
end
title("JiaoGo Vs Ergo")

%% 输出SGF棋谱
SaveSGF( sgf_record );