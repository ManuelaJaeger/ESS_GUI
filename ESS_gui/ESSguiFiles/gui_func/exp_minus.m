% Usage: exp_minus
%
% Copyright (C) 2017, University of Oldenburg, Germany.
% Author : Manuela Jaeger M.Sc., manuela.jaeger@uni-oldenburg.de, Neuropsychology Lab, University of Oldenburg, Germany 
% Date   : 02.03.2017 
% Updated:  <>

% Delete experimenter
if k<=1; 
    k=1; 
set(exp_name_stud(k),'String','')
set(exp_role_stud(k),'String','')
db.experimentersInfo(k).name=(' ');
db.experimentersInfo(k).role=(' ');

else    
delete(exp_name_stud(k));
delete(exp_role_stud(k));
db.experimentersInfo(k)=[];
k=k-1;
end

