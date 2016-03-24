function [ picName,picNum,picPath ] = PicInfoGet( path )

dirPath = dir(path);
folderNum = 0; %����ͼƬ���ļ��еĸ���
for k = 1 : length(dirPath)
    if strcmp(dirPath(k).name,'.')||strcmp(dirPath(k).name,'..')
        continue;
    else
        folderNum = folderNum + 1;
    end
end

jpgPath = cell(folderNum,1); %����ͼƬ�ļ��е�·��
for k = 1 : folderNum
    jpgPath{k} = strcat(path,'\',dirPath(k+2).name);
end

picNum = 1; %ͼƬ����
for k = 1 : folderNum
    dirjpg = dir(strcat(jpgPath{k},'\*.jpg'));
    for m = 1 : length(dirjpg)
        picName{picNum} = dirjpg(m).name; %ͼƬ����
        picPath{picNum} = strcat(jpgPath{k},'\',dirjpg(m).name); %ÿ��ͼƬ·��
        picNum = picNum + 1;
    end
end
picNum = picNum - 1;
end

