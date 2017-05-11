addpath('jsonlab');
% Compute training data, train and sweep alpha 
% for the nmf method.
% Note that for these parameters (particularly L) 
% you need a machine with loads of memory. 
% Do not try these in your laptop or desktop. Make some numbers.
% You have been warned.

%% 0 Configure parameters
options.L = 5; % number of stacked frames
options.H = 60; % Training data resample hop
options.K = 1500; % number of NMF basis
options.P = 1; % exponent for ratio mask (NMF)
options.N_BINS = 1025; %number of FFT bins
options.FFT_SIZE = 2 * (options.N_BINS-1); % STFT FFT size
options.HOP_SIZE = 512; % STFT hop size
options.N_ITER = 10; % number of iterations
options.dataset = loadjson('medleydb_sample.json');
% this json file points to files in the medleydb database
% obtain it from http://medleydb.weebly.com/
% then configure the "base_path" of the dataset in the json file
num_training_songs = 30; % number of songs used for training
num_training_examples_to_use = 100;

% Training and model files will be created the first time 
% and re-used subsequntly. Delete or move to re-create.
training_data_path = '~/Sandbox/data/training.mat';
model_path = '~/Sandbox/data/model.mat';
results_path = '~/Sandbox/data/results/';

%% 1 Extract training data (common for both methods)
extract_training_data(training_data_path, options, num_training_songs);
training_data = load(training_data_path);

%% 2 Train model (dnn or nmf)
%train_neural_net(training_data, model_path, options, num_training_examples_to_use);
train_nmf(training_data, model_path, options);
disp('DONE TRAINING')
%% 3 Seep alpha parameter (1 for dnn, 2 for nmf)
sweep_alpha(2,model_path, results_path, options);
disp('FINISHED')
% After all result files have been created, 
% set results_dir in plot_results and run
