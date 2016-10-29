function read_csv(self,name,delim)
%% loadcsv(fdir*,delim*) 
% *denotes optional inputs
% 
% load from deliminated file. looks for property names in the first row
% * looks in the root_meta folder for csv files
%
% inputs:
%   name -> name of file to load
%   delim -> delimiter overload. default is ','. optional.
% 
% author: john devitis
% create date: 26-Oct-2016 13:43:09
    fprintf('Reading meta data file ... \n');
	if nargin < 2 || isempty(name)
        % use example data as default if not specified
        name = 'exampledata.csv';
    else
        % build full path to file
        name = fullfile(self.root_meta,name);
    end
    if nargin < 3 || isempty(delim)
        delim = ',';
    end
    fprintf('\tLoading %s... ',name);
    % read and assign csv file as table 
    self.table = readtable(name,'Delimiter',delim);
    fprintf('Done.\n');	
end
