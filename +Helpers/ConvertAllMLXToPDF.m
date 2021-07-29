function ConvertAllMLXToPDF()
%CONVERTALLMLXTOPDF Summary of this function goes here
%   Detailed explanation goes here
currentPath = pwd;
files = dir(fullfile(currentPath,'**','*.mlx'));
for i = 1:numel(files)
   currentFile = files(i).name;
   currentPath = files(i).folder;
   fullPath = fullfile(currentPath,currentFile);
   Helpers.ConvertMLXToPDF(fullPath);
end
end

