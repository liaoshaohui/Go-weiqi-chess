function [ gas,piece_searched ] = SearchGas( piece,i,j,piece_searched )
%   递归寻找棋子是否有气
gas = 0;
piece_searched(i,j) = 1;            %为避免无穷递归，搜索过的位置做标记
%% 向右判断有气没有
if j < 19 && gas == 0
    if piece(i,j+1) == 0
        gas = 1;
    elseif piece(i,j+1) == piece(i,j) && piece_searched(i,j+1) == 0
        [ gas,piece_searched ] = SearchGas(piece,i,j+1,piece_searched );
    end
end
%% 向左判断有气没有
if j > 1 && gas == 0
    if piece(i,j-1) == 0
        gas = 1;
    elseif piece(i,j-1) == piece(i,j) && piece_searched(i,j-1) == 0
        [ gas,piece_searched ] = SearchGas(piece,i,j-1,piece_searched );
    end
end
%% 向下判断有气没有
if i < 19 && gas == 0
    if piece(i+1,j) == 0
        gas = 1;
    elseif piece(i+1,j) == piece(i,j) && piece_searched(i+1,j) == 0
        [ gas,piece_searched ] = SearchGas(piece,i+1,j,piece_searched );
    end
end
%% 向上判断有气没有
if i > 1 && gas == 0
    if piece(i-1,j) == 0
        gas = 1;
    elseif piece(i-1,j) == piece(i,j) && piece_searched(i-1,j) == 0
        [ gas,piece_searched ] = SearchGas(piece,i-1,j,piece_searched );
    end
end
end