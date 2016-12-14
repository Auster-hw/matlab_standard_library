function s = linePlotByObservation(data,varargin)
%
%   s = sl.plot.stats.linePlotByObservation(data,varargin)
%   
%   TODO: Finish this function
%
%   Goal is to plot each data point across the different conditions

in.labels = {};
in = sl.in.processVarargin(in,varargin);

s = struct;

subplot(1,2,1)
%bar chart data
subplot(1,2,2)
merged = [bc_saline; bc_pge2];
plot(merged,'k')
set(gca,'xlim',[0.8 2.2],'FontSize',16)
set(gca,'xtick',[1 2],'xticklabel',{'saline','pge2'})



end