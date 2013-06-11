function output = toObject(obj,s,fields_ignore,varargin)
%toObject Copies structure to object fields
%
%   [obj,extras] = sl.struct.toObject(obj,s,*fields_ignore)
%
%   NOTE: Currently there is no error thrown for missing fields
%
%   INPUTS
%   =======================================================================
%   obj : Handle object
%
%   OUTPUTS
%   =======================================================================
%
%   IMPROVEMENTS:
%   =======================================================================
%   1) Allow option to error when field doesn't exist
%   2) Allow option to error when fields to ignore don't exist (lower
%       priority)
%
%   IMPORTANT
%   =============================================================
%   Jim will be updating the output so that it is an object
%
%
%   TODO: Finish documentation

missing_fields = {};

fn = fieldnames(s);




if exist('fields_ignore','var')

    %TODO: Check that ignored fields actually exist
    
    fn(ismember(fn,fields_ignore)) = []; 
end

for iFN = 1:length(fn)
    curField = fn{iFN};
    try
        obj.(curField) = s.(curField);
    catch
       missing_fields = [missing_fields {curField}]; %#ok<AGROW>
       %Currently we won't throw an error
    end
end

output = sl.struct.toObjectResult(obj,missing_fields);