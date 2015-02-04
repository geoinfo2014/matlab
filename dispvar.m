function [] = dispvar(varargin)
%DISPVAR  displays variable names and their values
%   a format string can be provided as first argument
%   ex. dispvar('%9.5f', a, b, c);
%
%   © 2015 - Markus Mr. <github-contact@mr-pi.de>
	format_str = '%9.3f';

	start = isstr(varargin{1})+1; %if first argument a string, it is the format string

	if start==2
		format_str=varargin{1};
	end
	
	for i = start:nargin-1
		fprintf(['%12s: ',format_str,', '], inputname(i), varargin{i});
		if mod(i,4)==0
			fprintf('\n')
		end
	end
	fprintf(['%12s: ',format_str,'\n'], inputname(nargin), varargin{nargin});
end
