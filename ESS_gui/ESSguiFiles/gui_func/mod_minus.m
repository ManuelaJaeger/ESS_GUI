% Usage: mod_minus
%
% Copyright (C) 2017, University of Oldenburg, Germany.
% Author : Manuela Jaeger M.Sc., manuela.jaeger@uni-oldenburg.de, Neuropsychology Lab, University of Oldenburg, Germany 
% Date   : 02.03.2017 
% Updated:  <>

% Delete a modality
if m<=1; 
    m=1; 
 
set(type_stud(m),'String',[type_item(1:type_item_length) ' '],'Value',type_item_length+1);
set(sr_stud(m),'String','');
set(name_stud(m),'String',[name_item(1:type_item_length) ' '],'Value',type_item_length+1);
set(startchannel_stud(m),'String','');
set(endchannel_stud(m),'String','');
set(sisn_stud(m),'String','');
set(refloc_stud(m),'String',[refloc_item(1:refloc_item_length) ' '],'Value',refloc_item_length+1);
set(reflabel_stud(m),'String','');
set(chanloctype_stud(m),'String',[chanloctype_item(1:chanloctype_item_length) ' '],'Value',chanloctype_item_length+1);
set(chanlabel_stud(m),'String','');
set(nonscalpchanlabel_stud(m),'String','');
set(description_stud(m),'String','');

db.recordingParameterSet.modality(m)=db_clean.recordingParameterSet.modality(1);

else
   
delete(mod_num(m));
delete(type_stud(m));
delete(sr_stud(m));
delete(name_stud(m));
delete(startchannel_stud(m));
delete(endchannel_stud(m));
delete(sisn_stud(m));
delete(refloc_stud(m));
delete(reflabel_stud(m));
delete(chanloctype_stud(m));
delete(chanlabel_stud(m));
delete(nonscalpchanlabel_stud(m));
delete(description_stud(m));

db.recordingParameterSet.modality(m)=[];
m=m-1;

set(apply_loc,'String',[num2cell(1:m) ' '],'Value',m+1); 
set(apply2_loc,'String',[num2cell(1:m) ' '],'Value',m+1); 
end

