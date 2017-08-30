% Usage: session_minus
%
% Copyright (C) 2017, University of Oldenburg, Germany.
% Author : Manuela Jaeger M.Sc., manuela.jaeger@uni-oldenburg.de, Neuropsychology Lab, University of Oldenburg, Germany 
% Date   : 02.03.2017 
% Updated:  <>

% Delete a session
if s<=1; 
    s=1; 
db.sessionTaskInfo(s)=db_clean.sessionTaskInfo(1);

db.sessionTaskInfo(s).dataRecording.startDateTime=datestr(now,'yyyymmddTHHMMSS');
db.sessionTaskInfo(s).dataRecording.recordingParameterSetLabel=db.recordingParameterSet.recordingParameterSetLabel;    
db.sessionTaskInfo(s).sessionNumber=num2str(s);

set(date_session(s),'String',datestr(datenum(db.sessionTaskInfo(s).dataRecording.startDateTime,'yyyymmddTHHMMSS'),'dd.mm.yyyy HH:MM:SS'));
set(file_session(s),'String',db.sessionTaskInfo(s).dataRecording.filename);
set(eventfile_session(s),'String',db.sessionTaskInfo(s).dataRecording.eventInstanceFile);
set(rpsl_session(s),'String',db.sessionTaskInfo(s).dataRecording.recordingParameterSetLabel);
set(ofnap_session(s),'String',db.sessionTaskInfo(s).dataRecording.originalFileNameAndPath);
set(labId_session(s),'String',db.sessionTaskInfo(s).labId);
set(session_num(s),'String',db.sessionTaskInfo(s).sessionNumber);

taskLabel_item_length=size(db.tasksInfo,2);
taskLabel_item = [];
for n=1:taskLabel_item_length
    taskLabel_item{n}=db.tasksInfo(n).taskLabel;
end

[tf loc]=ismember(db.sessionTaskInfo(s).taskLabel,taskLabel_item);
if tf == 0
    if isempty(db.sessionTaskInfo(s).taskLabel);
        db.sessionTaskInfo(s).taskLabel={' '};
    end
    taskLabel_item=[taskLabel_item(1:taskLabel_item_length) db.sessionTaskInfo(s).taskLabel];
end
[tf loc]=ismember(db.sessionTaskInfo(s).taskLabel,taskLabel_item);
if loc ~= 0
    set(taskLabel_session(s),'String',taskLabel_item,'Value',loc)
end

else
   
delete(session_num(s));
delete(taskLabel_session(s));
delete(date_session(s));
delete(file_session(s));
delete(rpsl_session(s));
delete(eventfile_session(s));
delete(ofnap_session(s));
delete(labId_session(s));
delete(sub_info(s));
db.sessionTaskInfo(s)=[];
s=s-1;
end

