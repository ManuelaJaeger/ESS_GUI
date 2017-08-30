% Usage: event_minus
%
% Copyright (C) 
% Author : Manuela Jaeger M.Sc., manuela.jaeger@uni-oldenburg.de, Neuropsychology Lab, University of Oldenburg, Germany 
% Date   : 02.03.2017 
% Updated:  <>

% Delete an event
if e<=1; 
    e=1; 
db.eventCodesInfo(e)=db_clean.eventCodesInfo(1);

set(code_event(e),'String',db.eventCodesInfo(e).code);
set(label_event(e),'String',db.eventCodesInfo(e).condition.label);
set(description_event(e),'String',db.eventCodesInfo(e).condition.description);
set(tag_event(e),'String',db.eventCodesInfo(e).condition.tag);

taskLabel_item_length=size(db.tasksInfo,2);
taskLabel_item = [];
for n=1:taskLabel_item_length
    taskLabel_item{n}=db.tasksInfo(n).taskLabel;
end

[tf loc]=ismember(db.eventCodesInfo(e).taskLabel,taskLabel_item);
if tf == 0
    if isempty(db.eventCodesInfo(e).taskLabel);
        db.eventCodesInfo(e).taskLabel={' '};
    end
    taskLabel_item=[taskLabel_item(1:taskLabel_item_length) db.eventCodesInfo(e).taskLabel];
end
[tf loc]=ismember(db.eventCodesInfo(e).taskLabel,taskLabel_item);
if loc ~= 0
    set(taskLabel_event(e),'String',taskLabel_item,'Value',loc)
end

else
   
delete(code_event(e));
delete(taskLabel_event(e));
delete(label_event(e));
delete(description_event(e));
delete(tag_event(e));

db.eventCodesInfo(e)=[];
e=e-1;
end

