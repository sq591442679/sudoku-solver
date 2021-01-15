function [output,t] = youhua(data_in)
%%
tic;
output=[];
[output,possible_data,data]= mncz(output,data_in);
[output]=check(output,possible_data,data,1);
t=toc;
end

