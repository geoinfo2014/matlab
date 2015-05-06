function [pointsX] = plotPoints(varargin)
%PLOTPOINTS  plots given points ant there names at the axes
%   the points shoult provide as x1,y1,x2,y2,…,xN,yN
%   ex. plotPoints(x1,y1,x2,y2);
%
%   © 2015 - Markus Mr. <github-contact@mr-pi.de>

	for i = 1:nargin/2
		pointsX{i,1}=varargin{i*2-1};
		pointsX{i,2}=inputname(i*2-1);
		pointsY{i,1}=varargin{i*2};
		pointsY{i,2}=inputname(i*2);
    end

	figure();    
	hold();
	grid on;
    
    plot(cell2mat(pointsX(:,1)),cell2mat(pointsY(:,1)),'*');
    pointsX=sortrows(pointsX,1)
	pointsY=sortrows(pointsY,1)
    
	set(gca,'XTick',cell2mat(pointsX(:,1)));
	set(gca,'YTick',cell2mat(pointsY(:,1)));
	set(gca,'XTickLabel',str2mat(pointsX(:,2)));
	set(gca,'YTickLabel',str2mat(pointsY(:,2)));
    
    pointsX
    pointsY
end
