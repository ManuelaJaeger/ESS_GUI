% Usage: subjectinfo
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
    'Name', 'Help: Subject', ...
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
    set(parainfo,'String','De-personalized subject identifier (if available, otherwise insert NA).');
end   

if info_count==2
    set(parainfo,'String',sprintf('Name of the file that contains the channel locations.\nEEG: Channel location file should be stored in the same folder as the raw data and should be provided here without path information.\nMEG: Channel locations are included in the raw data file and do not need to be provided here, please insert NA.'));
end

if info_count==3
    set(parainfo,'String','If there is only 1 subject per session insert 1. If there are 2 subjects per session insert 1 for the first and 2 for the second. This numbering is to allow association between files and subjects in potential absence of subject labIds.');
end

if info_count==4
    set(parainfo,'String','Type of subject group the subject belongs to (e.g. autistic, normal, control ...).');
end

if info_count==5
    set(parainfo,'String',sprintf('Subjects gender.\n\nF: femal\nM: male\nX: intersex'));
end

if info_count==6
    set(parainfo,'String','Subjects year of birth.');
end

if info_count==7
    set(parainfo,'String','Subjects age (in years) at the time of recording.');
end

if info_count==8
    set(parainfo,'String',sprintf('Subjects dominantly used hand.\n\nR: right\nL: left\nA: ambidextrous'));
end

if info_count==9
    set(parainfo,'String','Can be Normal, CorrectedToNormal or Impaired.');
end

if info_count==10
    set(parainfo,'String','Can be Normal, CorrectedToNormal or Impaired.');
end

if info_count==11
    set(parainfo,'String','Height in centimeters.');
end

if info_count==12
    set(parainfo,'String','Weight in kilograms.');
end

if info_count==13
    set(parainfo,'String','Hours since last caffeine intake.');
end

if info_count==14
    set(parainfo,'String','Whether the subject has consumed alcohol.');
end

if info_count==15
    set(parainfo,'String','Experiment notes on subject, channels, etc.');
end

if info_count==16
    set(parainfo,'String','Cap identifier.');
end