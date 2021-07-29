function GenerateNDPlot(dataCell)
%GenerateNDPlot Creates a tiled layout of 2D plots of the data along every
%axis pair
arguments
    dataCell   {mustBeA(dataCell,'cell')}
end

tiledlayout('flow',"TileSpacing","loose")
numberOfDimensions = size(dataCell{1},2);
for i = 1:numberOfDimensions
    for j = i + 1: numberOfDimensions
        nexttile
        Helpers.Generate2DPlot(dataCell,i,j)
    end
end
end

