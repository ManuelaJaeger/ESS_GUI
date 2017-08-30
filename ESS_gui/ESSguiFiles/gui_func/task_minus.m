% Usage: task_minus
%
% Copyright (C) 2017, University of Oldenburg, Germany.
% Author : Manuela Jaeger M.Sc., manuela.jaeger@uni-oldenburg.de, Neuropsychology Lab, University of Oldenburg, Germany 
% Date   : 02.03.2017 
% Updated:  <>

% Delete a task
if t<=1; 
    t=1; 
db.tasksInfo(t)=db_clean.tasksInfo(1);

set(taskLabel_task(t),'String',db.tasksInfo(t).taskLabel);
set(tag_task(t),'String',db.tasksInfo(t).tag);
set(description_task(t),'String',db.tasksInfo(t).description);

else
   
delete(taskLabel_task(t));
delete(tag_task(t));
delete(description_task(t));

db.tasksInfo(t)=[];
t=t-1;
end

