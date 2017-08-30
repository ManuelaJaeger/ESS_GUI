% Usage: slider_callback
%
% Copyright (C) 2017, University of Oldenburg, Germany.
% Author : Manuela Jaeger M.Sc., manuela.jaeger@uni-oldenburg.de, Neuropsychology Lab, University of Oldenburg, Germany 
% Date   : 02.03.2017 
% Updated:  <>

function slider_callback(src,eventdata,arg1,tab_lim)

val = get(src,'Value');

set(arg1,'Position',[0 (-tab_lim+1)*val 1 tab_lim])
