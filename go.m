% Χ�����
% liaoshaohui
% 20180419����20180420
% 13698358751@qq.com
% ���̴�С19*19���������Ҷ��ģ�ÿһ�����ѡ�㣬û�����ӹ��ܵȣ�
% �����ƻ��Ľ�FindPoint������ʹѡ����ã������������жϹ��ܡ�
% ����GUI�ȣ����ƻ������ܵģ��
% δ���ƣ���ӭ����
% -----------------------------------------------------------

close all
clear
clc

%% ��ʼ���������
Shoushu = 100;                      %��������� 
sgf_record = zeros(2,Shoushu);      %��¼ÿһ������
piece = zeros(19,19);               %���ӣ�-1��Ӧ���ӣ�0��Ӧ�գ�1��Ӧ����

%% ����
%��������
figure
ShowBoard(piece);
%ÿһ��
for step = 1:Shoushu
    % ѡ����ŵ�
    [ i,j ] = FindPoint(piece,step);
    piece(i,j) = (-1)^step;
    % ��ʾ����
    ShowBoard(piece);
    pause(0.1)
    % ��¼��ǰ����������
    sgf_record(1,step)=i;
    sgf_record(2,step)=j;
end
title("JiaoGo Vs Ergo")

%% ���SGF����
SaveSGF( sgf_record );