%This code is based on the video by Chemical Engineering friends on Neural
%Network
%Author: Akshay Kudva (2021)
%You can find the data from this repository: https://archive.ics.uci.edu/ml/datasets/Combined+Cycle+Power+Plant
%Details about the system from: https://www.sciencedirect.com/science/article/pii/S0142061514000908?via%3Dihub

clc
clear
load('CCPP_data.mat');
X = CCPP_data(:,1:end-1);
Y = CCPP_data(:,end);


layer_struct = [10,10,5]; %Structure of neural network
activation = 'poslin'; %ReLU activation function
values = TrainNeuralNet(X,Y,layer_struct,activation); %See the function
net1 = values.net;

x_test = [14.96,41.76,1024,73.17];
Y_pred = (net1(X'))';
      

compare = [Y,Y_pred];

save net1












