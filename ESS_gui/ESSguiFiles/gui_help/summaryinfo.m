% Usage: summaryinfo
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
    'Name', 'Help: Summary information', ...
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
    set(parainfo,'String','Version of ESS used. This tag is mandatory for ESS versions 2 and above. Can be read out by clicking the button.');
end  

if info_count==2
    set(parainfo,'String',sprintf('File name of the study description xml-file.\n\nPlease leave blank.\n\nIt is automatically created during containerization.'));
end

if info_count==3
    set(parainfo,'String','Indicate whether the study has already been placed in an ESS Level 1 container or not. You should set this to No when initially creating the ESS Level 1 study container and XML file.');
end

if info_count==4
    set(parainfo,'String',sprintf('Type of license used to share data (e.g. CC0 for Creative Commons).'));
end

if info_count==5
    set(parainfo,'String',sprintf('License Text.'));
end

if info_count==6
    set(parainfo,'String','Total size of data the study folder contains. Can be calculated, if recording file folder is set, by clicking the button.');
end

if info_count==7
    set(parainfo,'String','Indicate whether all subjects are healthy and normal (mentally and physically).');
end

if info_count==8
    set(parainfo,'String',sprintf('If ESS validates the study schema the button color indicates the result.\nGreen: ESS successfully validated the study and containerization is ready to start.\nRed: ESS detected failures in the study schema, which needs to be corrected. See text box for more details.'));
end

if info_count==9
    set(parainfo,'String','Click on the button to specify the study container path. ESS creates a study Level 1 container with folder name: Studytitle_Level_1 in the selected folder.');
end