function [  ] = ShowBoard( piece )
%   绘制围棋棋盘和棋子
%% 绘制棋盘
for i = 1:19
    plot([i i],[1 19],'k');hold on
    plot([1 19],[i i],'k');hold on
end
h0 = plot([4 4 10 16 16 4 10 10 16],[4 16 10 4 16 10 4 16 10],'k.');
h1 = plot([1 1 19 19 1],[1 19 19 1 1],'k-');
set(h0,'MarkerSize',10);
set(h1,'LineWidth',2);
axis equal
axis([1 19 1 19])
set(gcf,'Toolbar','none','position',[ 164 48 856 552],'Resize' ,'on')
set(gca,'XTick',[],'YTick',[])

%% 生成棋子
for i = 1:19
    for j = 1:19
        if piece(i,j) == -1
            plot(i,j,'ko','MarkerFaceColor','k','MarkerSize',17)
        elseif piece(i,j) == 1
                plot(i,j,'ko','MarkerFaceColor','w','MarkerSize',17)
        end
    end
end
end