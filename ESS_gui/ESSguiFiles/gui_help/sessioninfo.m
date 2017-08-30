% Usage: sessioninfo
%
% Copyright (C) 2017, University of Oldenburg, Germany.
% Author : Manuela Jaeger M.Sc., manuela.jaeger@uni-oldenburg.de, Neuropsychology Lab, University of Oldenburg, Germany 
% Date   : 02.03.2017 
% Updated:  <>

if exist('fig3','var');
    if ishandle(fig3)
        close(fig3);
    end
end

fig3 = figure(...
    'Units','points', ...
    'Position',[500 300 300 150], ...
    'Color', [0.8 0.8 0.8], ...
    'Name', 'Help: Session information', ...
    'NumberTitle','off', ...
    'PaperUnits','points', ...
    'ToolBar','none', 'MenuBar','none');


parainfo= uicontrol(...
    'Parent', fig3, ...
    'Units','normalized', 'Position', [0.05 0.05 0.9 0.9], ...
    'Style', 'text', ...
    'Fontsize', 12, ...
    'HorizontalAlignment','left',...
    'Backgroundcolor', [0.8 0.8 0.8]);
    
if info_count==1
    set(parainfo,'String','Number identifies individual session (e.g. 1, 2, ...).');
end   

if info_count==2
    set(parainfo,'String',sprintf('Task label indicates which task is being performed in the session. Choose from the dropdown menu.\nTask labels need to be specified in the Table of Task Information before using them in the Table of Session Information.'));
end

if info_count==3
    set(parainfo,'String','Identifier of session used in original lab notes (if available, otherwise insert NA).');
end

if info_count==4
    set(parainfo,'String','Click on Subject button to enter information about subject.');
end

if info_count==5
    set(parainfo,'String','Exact local time and date of the beginning of the recording in ISO 8601 format.');
end

if info_count==6
    set(parainfo,'String','The label of the Recording parameter set associated with the recording and specified in the Recording parameter window.');
end

if info_count==7
    set(parainfo,'String',sprintf('Name of the file containing a list of event instances and their tags.\n\nPlease leave blank.\n\nIt is automatically created during containerization.'));
end

if info_count==8
    set(parainfo,'String',sprintf('Contains the original filename and path of the recording in Level 0.\n\nPlease leave blank.\n\nIt is automatically created during containerization.'));
end

if info_count==9
    set(parainfo,'String',sprintf('Filename of the data recording without path information.\n\nPlease specify:\n.vhdr file requires bva-io eeglab plugin\n.xdf file requires xdfimport eeglab plugin\n.bdf file requires biosig eeglab plugin\n.set file for eeglab datasets'));
end

if info_count==10
    set(parainfo,'String','Root folder and path of the associated data recording files.');
end