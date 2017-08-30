% Usage: read_locs
%
% Copyright (C) 2017, University of Oldenburg, Germany.
% Author : Manuela Jaeger M.Sc., manuela.jaeger@uni-oldenburg.de, Neuropsychology Lab, University of Oldenburg, Germany 
% Date   : 02.03.2017 
% Updated:  <>

% get filename
filename=uigetfile({'*.loc;*.locs;*.eloc;*.sph;*.elc;*.elp;*.xyz;*.asc;*.dat;*.sfp;*.ced'});

if filename~=0
% read channel locations using eeglab function readlocs.m 
elocs=[];
elocs=readlocs(filename);
% concatenate channel labels separated by comma
str=strjoin({elocs.labels},', ');
end

% eof