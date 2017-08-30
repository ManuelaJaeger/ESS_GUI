% Usage: gui_validate
%
% Copyright (C) 2017, University of Oldenburg, Germany.
% Author : Manuela Jaeger M.Sc., manuela.jaeger@uni-oldenburg.de, Neuropsychology Lab, University of Oldenburg, Germany 
% Date   : 02.03.2017 
% Updated:  <>

validatetext=[]; 
issue_outstanding=[];

if strcmp(db.isInEssContainer,'Yes');
    validatetext=['Data are already in an ESS Container.'];
    set(validatetext_summary,'String',validatetext);
    set(validate_summary,'Backgroundcolor',[1 0 0]);
    if exist('csc_summary')
        delete(csc_summary);
    end
    if exist('cscpath_summary')
        delete(cscpath_summary);
    end
    if exist('csc_name')
        delete(csc_name);
    end
    if exist('cscpath_help')
        delete(cscpath_help);
    end
else
    
[db issue]=db.validate; 

for n=1:size(issue,2) 
    issue_outstanding(n)=isempty(issue(n).howItWasFixed); 
    validatetext=[validatetext sprintf('%d: %s \n    Fixed: %s\n\n',n,issue(n).description,issue(n).howItWasFixed)]; 
end; 

set(validatetext_summary,'String',validatetext);

if sum(issue_outstanding)~=0
    set(validate_summary,'Backgroundcolor',[1 0 0]);
    if exist('csc_summary')
        delete(csc_summary);
    end
    if exist('cscpath_summary')
        delete(cscpath_summary);
    end
    if exist('csc_name')
        delete(csc_name);
    end
    if exist('cscpath_help')
        delete(cscpath_help);
    end
else
    set(validate_summary,'Backgroundcolor',[0 1 0]);
    
cscpath=[];
level='_level_1';
add_doc='additional_documentation';

csc_name=uicontrol(...
    'Parent', fig8, ...
    'Units','normalized', 'Position', [0.03 0.2 0.18 0.04], ...
    'Style', 'push', ...
    'Fontsize', 14, ...
    'Backgroundcolor', [0.8 0.8 0.8], ...
    'String', 'Study container path',...  
    'Callback','cscpath=uigetdir(); if cscpath ~=0; set(cscpath_summary,''String'',cscpath); end;');

csc_summary = uicontrol(...
    'Parent', fig8, ...
    'Units','normalized', 'Position', [0.4 0.1 0.2 0.04], ...
    'Style', 'push', ...
    'Fontsize', 14, ...
    'Backgroundcolor', [0.8 0.8 0.8], ...
    'String', 'Create container',...
    'Callback','if ~isempty(cscpath); db.createEssContainerFolder([cscpath filesep db.studyTitle level]); idx=structfun(@isempty,db.recordingParameterSet); if idx(3)==0; [xpath,xname,xext]=fileparts(db.recordingParameterSet.recConfig); copyfile(db.recordingParameterSet.recConfig,[cscpath filesep db.studyTitle level filesep add_doc filesep xname xext]); end; else; set(validatetext_summary,''String'',''Please specify Study container path.''); end;');

cscpath_summary = uicontrol(...
    'Parent', fig8, ...
    'Units','normalized', 'Position', [0.25 0.2 0.7 0.04], ...
    'Style', 'edit', ...
    'Fontsize', 12, ...
    'Foregroundcolor', [0 0 1], ...
    'String',cscpath,... 
    'HorizontalAlignment','left',...
    'Callback','cscpath=strtrim(get(cscpath_summary,''String''));');

cscpath_help=uicontrol(...
    'Parent', fig8, ...
    'Units','normalized', 'Position', [0.225 0.21 0.02 0.02], ...
    'Style', 'push', ...
    'Fontsize', 10, ...
    'Backgroundcolor', [0.8 0.8 0.8], ...
    'String', 'i',...
    'Callback','info_count=9; summaryinfo'); 
end

end
    

