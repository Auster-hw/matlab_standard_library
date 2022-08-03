function [BC_all_data,VE_all_data] = toComboMatrix(input)
% input = data;
norm_rates = [1/6 1/3 1 2 4 8 16];
BC_all_data= NaN(6,length(norm_rates),length(fieldnames(input)));
VE_all_data = NaN(6,length(norm_rates),length(fieldnames(input)));
for i = 1:length(fieldnames(input))
%     expt = dba.short.loadExpt(expt_ids(i));
%     tm = expt.trial_meta;
%     table = expt.trial_meta(:,{'set','fill_rate','bladder_capacity','voiding_efficiency'});
    
%     rule out the presets and bad data     
    true_sets =  input.(sprintf('table%d',i))(input.(sprintf('table%d',i)).set~=0,:);
    true_sets = true_sets(true_sets.ignore~=1,:);
   
    for j = 1:length(unique(true_sets.set)) 
        if  ~ismember(j,true_sets.set)
            j = j+1;
        end
        single_set= true_sets(true_sets.set==j,:);
         base_rate = single_set.base_fill_rate;
        norm_rate_in_set = single_set.fill_rate ./ base_rate;
        position_indices = dba.files.getPosition(norm_rate_in_set,norm_rates);
        BC_all_data(j,position_indices,i) = single_set.bladder_capacity;
        VE_all_data(j,position_indices,i) = single_set.voiding_efficiency;
        
%         norm_rate_in_set = single_set.fill_rate ./ base_rate;
%         position_indices = dba.files.getPosition(norm_rate_in_set,norm_rates);
%         BC_all_data(j,position_indices,i) = single_set.bladder_capacity;
%         VE_all_data(j,position_indices,i) = single_set.voiding_efficiency;
%         BC(i,:) = mean(BC_all_data(:,:,i),1,'omitnan');
%         VE(i,:) = mean(VE_all_data(:,:,i),1,'omitnan');
%         BC_norm(i,:) = mean(BC_all_data(:,:,i)./ BC_all_data(:,br_position,i),1,'omitnan');
%         VE_norm(i,:) = mean(VE_all_data(:,:,i),1,'omitnan');
%         VE_norm(i,:) =  VE_norm(i,:)./VE_norm(i,br_position);
    end
    
end
end

