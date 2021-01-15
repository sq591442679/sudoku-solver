function [output,possible_data,data_in] = mncz(output,data_in)
[possible_data,data_in]= find_possible_num(data_in);
count=0;
data_now=data_in;
while (count<4)
    [output,possible_data,data_in]=unique_num(output,possible_data,data_in);
    [output,possible_data,data_in]=gbc(output,possible_data,data_in);
    [output,possible_data,data_in]=hbc(output,possible_data,data_in);
    [possible_data]=qkbc(possible_data);
    [possible_data]=sd(possible_data);
    if isequal(data_now,data_in)
        count=count+1;
    else 
        count=0;
        data_now=data_in;
    end
end
end