% Copyright (C) 2017, University of Oldenburg, Germany.
% Author : Manuela Jaeger M.Sc., manuela.jaeger@uni-oldenburg.de, Neuropsychology Lab, University of Oldenburg, Germany 
% Date   : 02.03.2017 
% Updated:  <>

function Y=tex_cat(M) 

% number of rows in multi-line string
rows=size(M,1);
Y=[];
% concatenate strings to one row
for k=1:rows
    Y=strtrim([Y ' ' strtrim(M(k,:))]);
end