%���ڲ���ͼƬѵ�������Ƿ���ڲ���ͼƬ�������ڣ����Ƴ������浽���ļ�����
%����ѵ�����в��ܰ�������ͼƬ
clear all;
close all;
clc;

targetFilePath = 'E:\New Test Code\����С�ര'; %ѵ����·��
picPath = 'E:\New Test Code\test pic'; %����ͼƬ·��
destination = 'E:\New Test Code\temp'; %�޳�ͼƬ�ı���·��

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