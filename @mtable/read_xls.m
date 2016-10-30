function read_xls(self)
%% read_xls
% 
% 
% 
% author: john devitis
% create date: 28-Oct-2016 18:58:45
    fprintf('Reading meta data file ... \n');
% 	if nargin < 2 || isempty(name)
%         % use example data as default if not specified
%         name = 'exampledata.csv';
%     else
%         % build full path to file
%         name = fullfile(self.root_meta,name);
%     end
%     if nargin < 2 || isempty(delim)
%         delim = ',';
%     end
%     
    % read and assign xls file as table 
    if isempty(self.sheet)
        self.sheet = 1;
        fprintf('\n\t\t no sheet info... reading first... ');
    end
    
    % read table
    fprintf('\tLoading %s... ',self.fullname);
    self.table = readtable(self.fullname,'FileType','spreadsheet',...
        'Sheet',self.sheet);
    fprintf('Done.\n');	
	
end
