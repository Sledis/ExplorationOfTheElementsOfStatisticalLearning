function gaussianData = MultipleGaussiansWithSameCovariance(DimensionOfSpace,NumberOfGaussians,MeanGeneratingFunction)
% MultipleGaussiansWithSameCovariance - Generates a cell array with each
% cell storing the data for generating multiple multi-dimensional Gaussian
% with the same covariance.

% DimensionsOfSpace - The dimension of the Gaussian required.
% NumberOfGaussians - The number of Gaussians required.
% MeanGeneratingFunction - A function needed for specifying the drawing of
% the means of the Gaussians.

% Generate a positive definite symmetric matrix for the 
sigma = randn(DimensionOfSpace);
sigma = (sigma' * sigma);

% Generate the means.
means = MeanGeneratingFunction(NumberOfGaussians,DimensionOfSpace);

% Package the data together.
gaussianData = cell(1,NumberOfGaussians);
for i = 1:NumberOfGaussians
   gaussianData{i} = {means(i,:),sigma}; 
end
end

