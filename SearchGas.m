function [ gas,piece_searched ] = SearchGas( piece,i,j,piece_searched )
%   �ݹ�Ѱ�������Ƿ�����
gas = 0;
piece_searched(i,j) = 1;            %Ϊ��������ݹ飬��������λ�������
%% �����ж�����û��
if j < 19 && gas == 0
    if piece(i,j+1) == 0
        gas = 1;
    elseif piece(i,j+1) == piece(i,j) && piece_searched(i,j+1) == 0
        [ gas,piece_searched ] = SearchGas(piece,i,j+1,piece_searched );
    end
end
%% �����ж�����û��
if j > 1 && gas == 0
    if piece(i,j-1) == 0
        gas = 1;
    elseif piece(i,j-1) == piece(i,j) && piece_searched(i,j-1) == 0
        [ gas,piece_searched ] = SearchGas(piece,i,j-1,piece_searched );
    end
end
%% �����ж�����û��
if i < 19 && gas == 0
    if piece(i+1,j) == 0
        gas = 1;
    elseif piece(i+1,j) == piece(i,j) && piece_searched(i+1,j) == 0
        [ gas,piece_searched ] = SearchGas(piece,i+1,j,piece_searched );
    end
end
%% �����ж�����û��
if i > 1 && gas == 0
    if piece(i-1,j) == 0
        gas = 1;
    elseif piece(i-1,j) == piece(i,j) && piece_searched(i-1,j) == 0
        [ gas,piece_searched ] = SearchGas(piece,i-1,j,piece_searched );
    end
end
end