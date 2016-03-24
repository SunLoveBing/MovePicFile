%用于查找图片训练库中是否存在测试图片，若存在，则移除，保存到新文件夹中
%即：训练库中不能包含测试图片
clear all;
close all;
clc;

targetFilePath = 'E:\New Test Code\有无小侧窗'; %训练库路径
picPath = 'E:\New Test Code\test pic'; %测试图片路径
destination = 'E:\New Test Code\temp'; %剔除图片的保存路径

[ targetPicName,targetPicNum,targetPicPath ] = PicInfoGet( targetFilePath );
[ picName,picNum ] = PicInfoGet( picPath );

for k = 1 : picNum
    for m = 1 : targetPicNum
        if strcmp(picName{k},targetPicName{m})
            movefile(targetPicPath{m},destination);
            continue;
        end
    end
end