function [ picName,picNum,picPath ] = PicInfoGet( path )

dirPath = dir(path);
folderNum = 0; %保存图片的文件夹的个数
for k = 1 : length(dirPath)
    if strcmp(dirPath(k).name,'.')||strcmp(dirPath(k).name,'..')
        continue;
    else
        folderNum = folderNum + 1;
    end
end

jpgPath = cell(folderNum,1); %保存图片文件夹的路径
for k = 1 : folderNum
    jpgPath{k} = strcat(path,'\',dirPath(k+2).name);
end

picNum = 1; %图片数量
for k = 1 : folderNum
    dirjpg = dir(strcat(jpgPath{k},'\*.jpg'));
    for m = 1 : length(dirjpg)
        picName{picNum} = dirjpg(m).name; %图片名称
        picPath{picNum} = strcat(jpgPath{k},'\',dirjpg(m).name); %每张图片路径
        picNum = picNum + 1;
    end
end
picNum = picNum - 1;
end

