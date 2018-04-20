function [ piece_alive ] = PieceAlive( piece )
%	判断棋子是否有气，返回有气的坐标
piece_alive = zeros(19,19);
piece_searched = zeros(19,19);
for i = 1 : 19
    for j = 1 : 19
        if piece(i,j) == 0
            piece_alive(i,j) = 1;   %空的位置也判断为有气
        else
            piece_alive(i,j) = SearchGas(piece,i,j,piece_searched);
        end
    end
end
end

