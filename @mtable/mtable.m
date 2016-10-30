classdef mtable < handle
%% classdef mtable
% author: john devitis
% create date: 22-Jul-2016 02:54:15

	%% object properties -- %%
	properties
%         path % path to table file (on disk -> windows host)
%         name % name of table file with extension
%         sheet % optional sheet (not required for csv)
        desc % optional description of table       
        table % raw table data (from csv file)
	end

	%% dependent properties -- %%
	properties (Dependent)
	end

	%% developer properties -- %%
	properties (Access = private)
	end

	%% dynamic methods-- %%
	methods
		%% constructor -- %%
		function self = mtable()            
        end       
        
        %% ordinary methods
        
		%% dependent methods -- %%
        
	end

	%% static methods -- %%
	methods (Static)
	end

	%% internal methods -- %%
	methods (Access = private)
	end

end
