function ConvertMLXToPDF(fileName)
[filepath,name,ext] = fileparts(fileName);
pdfFile = fullfile(filepath,strcat(name,'.pdf'));
matlab.internal.liveeditor.openAndConvert(fileName,pdfFile);
end

