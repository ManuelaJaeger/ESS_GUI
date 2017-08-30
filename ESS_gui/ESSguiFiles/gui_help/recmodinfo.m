% Usage: recmodinfo
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
    'Name', 'Help: Recording parameter', ...
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
    set(parainfo,'String','Each contiguous block of channels with the same modality (EEG, MEG, MoCap, ...) should be described with one modality tag. Multiple of these tags in combination describe the types (modalities) of all channels in the recording. If a modality is recorded in discontinuous blocks, use multiple modality tags, each for one channel block. Up to 3 can be used.');
end   

if info_count==2
    set(parainfo,'String',sprintf('The recorded signal type:\n\nEEG (Electroencephalogram)\nMEG (Magnetoencephalography)\nMoCap (Motion Capture)\nGaze (gaze or eye tracking parameters)'));
end

if info_count==3
    set(parainfo,'String','Sampling rate of the modality (in Hz). Each modality may be recorded at a different sampling rate.');
end

if info_count==4
    set(parainfo,'String','The name (brand) of the sensor device e.g. Brainproducts, BioSemi, OptiTrack, SMI, Smarting.');
end

if info_count==5
    set(parainfo,'String','The channel number in the recording where the modality block starts.');
end

if info_count==6
    set(parainfo,'String','The channel number in the recording where the modality block ends.');
end

if info_count==7
    set(parainfo,'String','Number of subjects in one session. Only required if data from multiple subjects are recorded in a single recording.');
end

if info_count==8
    set(parainfo,'String','Location of the reference channel or channels used during EEG or ECG recording. Should only be provided if type is EEG or ECG. For EEG, choose between the following values: Nose, Nasion, Cz (top of the head), Average, Ears, Right Ear, Left Ear, Mastoids, Linked Mastoids (electrically linked mastoids), Right Mastoid, Left Mastoid, CMS (e.g. BioSemi), WCT (Wilson Central Terminal ECG).');
end

if info_count==9
    set(parainfo,'String','Labels of the reference channel or channels used during EEG or ECG recording.');
end

if info_count==10
    set(parainfo,'String',sprintf('For EEG modality, channel location type or standard used: 10-20, 10-10, 10-5, EGI, Custom.\nChoose Custom for channel location types used in Equidistant channel cap, Ceegrid, Mobile cap, NIRS cap. Custom requires that a channel location file is provided in the raw data folder and needs to be specified in the table of session information for each subject.'));
end

if info_count==11
    set(parainfo,'String',sprintf('A comma separated list of labels corresponding channels. Labels for all EEG channels, whether on scalp or not, should be listed here.\nBy using the Read button, channel labels can be read from a common channel location file. Use the dropdown menu to specify the modality to which the labels should be applied.'));
end

if info_count==12
    set(parainfo,'String',sprintf('A comma separated list of labels corresponding to channels not on the scalp, e.g. EOG, EXG, EMG and Mastoids.\nBy using the Read button, channel labels can be read from a common channel location file. Use the dropdown menu to specify the modality to which the labels should be applied.'));
end

if info_count==13
    set(parainfo,'String','A detailed description of the modality.');
end

if info_count==14
    set(parainfo,'String',sprintf('Please choose Recording configuration file if available.\n\n.rwksp file for Brainvision recordings\nAfter containerization the Recording configuration file can be found in the study container folder:\n %s_Level_1\\additional_documentation',db.studyTitle));
end

if info_count==15
    set(parainfo,'String','Label of the Recording parameter set.');
end