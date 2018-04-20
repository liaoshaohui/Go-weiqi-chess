function [  ] = SaveSGF( sgf_record )
%   将sgf_record中存储的手数记录保存为SGF格式文件
sgf_out = "(;FF[4]CA[UTF-8]KM[7.5]OT[3x60 byo-yomi]PB[JiaoGO]PW[ErGo]";
sgf_last = ")";
sgf_B = ";B[";
sgf_W = ";W[";
sgf_BW = "]";
alphabet = char("abcdefghijklmnopqrs");
for step = 1:length(sgf_record)
    if mod(step,2) ~= 0
        sgf_out = [sgf_out,sgf_B,alphabet(sgf_record(1,step)),...
            alphabet(sgf_record(2,step)),sgf_BW];
    else
        sgf_out = [sgf_out,sgf_W,alphabet(sgf_record(1,step)),...
            alphabet(sgf_record(2,step)),sgf_BW];
    end
end
sgf_out = [sgf_out,sgf_last];
FID=fopen('sgf_out.sgf','w');
fprintf(FID, '%s', sgf_out);
fclose(FID);
end