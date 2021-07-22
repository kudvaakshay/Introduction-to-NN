function output = TrainNeuralNet(X,Y,layer_struct,activation)

%Train neural network
num_layers = size(layer_struct,2);

%Feedforward net starts here
net = feedforwardnet(layer_struct);

%Specify activation function for each layer
for i = 1:num_layers
net.layers{i}.transferFcn = activation;
end
net.trainParam.epochs=100;

net = train(net,X',Y');


output = {};
output.net = net;
end