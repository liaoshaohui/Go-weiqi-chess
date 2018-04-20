function [ i,j ] = FindPoint(piece,step)
%   找可着点的坐标
%   可重写这个函数! 本函数采用随机的选点，效率越往后越低
FP = 0;
while(FP == 0)
    i = unidrnd(19);
    j = unidrnd(19);
    if piece(i,j) == 0
        piece(i,j) = (-1)^step;
        piece_alive = PieceAlive( piece );
        %可着条件：这一着后没有死子；能让对方子死掉；否则需自己的子不死
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