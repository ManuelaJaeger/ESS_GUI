% Usage: taskinfo
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
    'Name', 'Help: Task information', ...
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
    set(parainfo,'String',sprintf('A Task label is required only if there are multiple tasks in the study recorded in separate data files, otherwise insert main.\nCase: 1 recording file per session. Insert main and specify different tasks in the Event code description.\nCase: more then 1 recording file per session. Specify each condition (recording file) by a unique task label.'));
end 

if info_count==2
    set(parainfo,'String',sprintf('HED tag related to either context or paradigms of study (based on hierarchical event representation document). You can put multiple tags, separated by commas or semicolons.\nSee www.hedtags.org for more information.'));
end

if info_count==3
    set(parainfo,'String','Provide a short description of what the Task label refers to.');
end



