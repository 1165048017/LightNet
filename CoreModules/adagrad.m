function [  net,res,opts ] = adagrad(  net,res,opts )
%NET_APPLY_GRAD_SGD Summary of this function goes here
%   Detailed explanation goes here

    if ~isfield(opts.parameters,'weightDecay')
        opts.parameters.weightDecay=1e-4;
    end
    
    
    if ~isfield(opts.results,'lrs')
        opts.results.lrs=[];%%not really necessary
    end
    opts.results.lrs=[opts.results.lrs;gather(opts.parameters.lr)];
    
    if ~isfield(opts.parameters,'eps')
        opts.parameters.eps=1e-6;
    end
    
    for layer=1:numel(net.layers)
        if isfield(net.layers{1,layer},'weights')
            
            net.layers{1,layer}.momentum{1}=net.layers{1,layer}.momentum{1}+res(layer).dzdw.^2;
            net.layers{1,layer}.weights{1}=net.layers{1,layer}.weights{1}-opts.parameters.lr*res(layer).dzdw./(net.layers{1,layer}.momentum{1}.^0.5+opts.parameters.eps)- opts.parameters.weightDecay * net.layers{1,layer}.weights{1};
            
            net.layers{1,layer}.momentum{2}=net.layers{1,layer}.momentum{2}+res(layer).dzdb.^2;
            net.layers{1,layer}.weights{2}=net.layers{1,layer}.weights{2}-opts.parameters.lr*res(layer).dzdb./(net.layers{1,layer}.momentum{2}.^0.5+opts.parameters.eps);

        end
    end
   
end

