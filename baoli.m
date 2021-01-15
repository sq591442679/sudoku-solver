function [t] = baoli(data_in)
%%
tic;
[possible_data,data]= find_possible_num(data_in);
check2(possible_data,data,1);
t=toc;
end

