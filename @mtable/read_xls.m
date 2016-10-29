function read_xls(self)
%% read_xls
% 
% 
% 
% author: john devitis
% create date: 28-Oct-2016 18:58:45
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
    % read and assign xls file as table 
%     self.table = readtable(name,'Delimiter',delim);
    fprintf('Done.\n');	
	
end
