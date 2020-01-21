%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                     
%
%       Setup path in directory
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Data: VR in PD (Tim Waldron, FB 2 Medien, FH Kiel)
% Author: Clint Hansen & Julius Welzel (Neurogeriatrie, UKSH Kiel, University of Kiel)
% Version: 1.0 // setting up default (21.01.2020)

% clean wksp ------------------------
clc;clear all;close all;

%% Set MAIN path ----------------------
MAIN = 'C:\Users\Sara\Desktop\NG_kiel\VR_PD\\'; % set project path
addpath(genpath(MAIN))


%Change MatLab defaults
set(0,'defaultfigurecolor',[1 1 1]);
set(0,'DefaultAxesFontname', 'Times New Roman')
set(0,'DefaultTextFontname', 'Times New Roman')

