function [ piece_alive ] = PieceAlive( piece )
%	�ж������Ƿ���������������������
piece_alive = zeros(19,19);
piece_searched = zeros(19,19);
for i = 1 : 19
    for j = 1 : 19
        if piece(i,j) == 0
            piece_alive(i,j) = 1;   %�յ�λ��Ҳ�ж�Ϊ����
        else
            piece_alive(i,j) = SearchGas(piece,i,j,piece_searched);
        end
    end
end
end

