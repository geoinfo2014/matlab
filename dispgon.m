function [] = dispgon(varargin)
%DISPGON  displays variable names and their values(converted to gons)
%   a format string can be provided as first argument
%   ex. dispgon('%9.6f', a, b, c);
%
%   © 2015 - Markus Mr. <github-contact@mr-pi.de>
	format_str = '%6.3fgon';

	start = isstr(varargin{1})+1; %if first argument a string, it is the format string

	if start==2
		format_str=varargin{1};
	end
	
	for i = start:nargin-1
		fprintf(['%12s: ',format_str,', '], inputname(i), rad2gon(varargin{i}));
		if mod(i-start+1,4)==0
			fprintf('\n')
		end
	end
	fprintf(['%12s: ',format_str,'\n'], inputname(nargin), rad2gon(varargin{nargin}));
end
