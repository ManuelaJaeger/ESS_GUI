% Usage: studyinfo
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
    'Name', 'Help: Study description', ...
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
    set(parainfo,'String',sprintf('Title of the study. Follow file naming convention:\n\nxxx_projectname\n\nxxx: 3 initials\nprojectname: use lowercase, underscore and no whitespaces'));
end   

if info_count==2
    set(parainfo,'String',sprintf('A short (less than 120 characters) description of the study (e.g. study goals and procedures).'));
end

if info_count==3
    set(parainfo,'String',sprintf('A detailed description of the study. Explain study goals, experimental procedures, task and stimuli.'));
end

if info_count==4
    set(parainfo,'String','IRB (Institutional Review Board) information, including date of approval and IRB number if available.');
end

if info_count==5
    set(parainfo,'String','Information regarding the organization that conducted the research study or experiment.');
end

if info_count==6
    set(parainfo,'String','Information of individual to contact for data results, or more information regarding the study.');
end

if info_count==7
    set(parainfo,'String','Information about the organization which funded the research.');
end

if info_count==8
    set(parainfo,'String','Information about the Grant ID, if available.');
end

if info_count==9
    set(parainfo,'String','List of experimenters involved in the study (up to 6).');
end

if info_count==10
    set(parainfo,'String','The role of experimenter in study (e.g. Principal Investigator, Data Analysis, Software Infrastructure ...).');
end

if info_count==11
    set(parainfo,'String',sprintf('Choose you project folder.\nClick on: Save - your study description is saved as a .mat file in your project folder, do this every time you added information to your study description.'));
end