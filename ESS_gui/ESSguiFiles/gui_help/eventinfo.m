% Usage: eventinfo
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
    'Name', 'Help: Event code information', ...
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
    set(parainfo,'String','Event code number or name.');
end 

if info_count==2
    set(parainfo,'String',sprintf('Choose from the dropdown menu the task the event code belongs to.\n\nTask labels need to be specified in the Table of Task Information before using them in the Table of Event Code Information.'));
end

if info_count==3
    set(parainfo,'String','Provide a short label of the condition the event code refers to.');
end

if info_count==4
    set(parainfo,'String','More detailed description of the condition, what the event is, or when the event occurs.');
end

if info_count==5
    set(parainfo,'String',sprintf('Event code tag, based on hierarchical event representation document.\nSee www.hedtags.org for more information.'));
end

if info_count==6
    set(parainfo,'String',sprintf('Event specification method. Codes means it uses event codes, Tags means it uses HED tags defined for each event instance as the primary source of information.'));
end

if info_count==7
    set(parainfo,'String',sprintf('Version of HED schema used in event tagging.\nSee www.hedtags.org for more information.'));
end

if info_count==8
    set(parainfo,'String',sprintf('Read event codes from recording file:\n\n.vhdr\n.xdf\n.bdf\n.set\n\nPlease note: Existing event codes will be replaced.'));
end