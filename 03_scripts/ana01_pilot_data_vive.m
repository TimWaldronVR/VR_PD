%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%                      Analyse Pilot VIVE data
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% set PATH and laod functions
PATHIN_data = [MAIN '02_data\00_rawdata\'];
PATHOUT_data = [MAIN '02_data\01_pilot\'];
if ~exist(PATHOUT_data);mkdir(PATHOUT_data);end
addpath(genpath(MAIN));

% find all datasets
list = dir(fullfile(PATHIN_data));

%% Load data
dat_vive = load_xdf([PATHIN_data '01-EyeRightRotateEulerXYZ-HeadLookLeftlookRight-10sek.xdf']);
dat_eye_ri = dat_vive{1,1}.time_series;

%% plot 7 channels each eye
figure
r = plot(vec_time,dat_eye_ri(1:2,:),'LineStyle',':','LineWidth',2)
hold on
r = plot(vec_time,dat_eye_ri(3,:),'LineStyle',':','LineWidth',.5)

ylabel '[°]?'
xlabel 'time [s]'
axis tight
title (dat_vive{1,1}.info.name)

save_fig(gcf,PATHOUT_data,'EyeTrackingVIVE')
