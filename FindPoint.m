function [ i,j ] = FindPoint(piece,step)
%   �ҿ��ŵ������
%   ����д�������! ���������������ѡ�㣬Ч��Խ����Խ��
FP = 0;
while(FP == 0)
    i = unidrnd(19);
    j = unidrnd(19);
    if piece(i,j) == 0
        piece(i,j) = (-1)^step;
        piece_alive = PieceAlive( piece );
        %������������һ�ź�û�����ӣ����öԷ����������������Լ����Ӳ���
        if ~any(piece_alive == 0)
            FP = 1;
        elseif any(piece(piece_alive == 0) == (-1)*(-1)^step)
            FP = 1;
        elseif any(piece(piece_alive == 0) ~= (-1)^step)
            FP = 1;
        end
        piece(i,j) = 0;
    end
end
end