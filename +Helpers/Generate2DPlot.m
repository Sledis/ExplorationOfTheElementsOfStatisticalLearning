function Generate2DPlot(dataCell,dimension1,dimension2)
%Generate2DPlot - Creates a 2D plot of ND classified data in the given
%dimension
arguments
    dataCell   {mustBeA(dataCell,'cell')}
    dimension1 {mustBeInteger,mustBePositive}
    dimension2 {mustBeInteger,mustBePositive}
end
hold on
numberOfResponses = numel(dataCell);
for i = 1:numberOfResponses
    currentData = dataCell{i};
    plot(currentData(:,dimension1),currentData(:,dimension2),"+");
end
title(['Dim ', num2str(dimension1),' vs dim ', num2str(dimension2),'.'])
hold off
end
