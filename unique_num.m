function [output,possible_data,data_in] = unique_num(output,possible_data,data_in)
for i=1:9
    for j=1:9
        if length(possible_data{i,j})==1
            %disp(possible_data{i,j}(1));
            tp=[i,j,possible_data{i,j}(1)];
            output=[output,tp];
            data_in(i,j)=possible_data{i,j}(1);
            [possible_data] = remove_possible_num(possible_data,data_in(i,j),i,j,3*floor((i-1)/3) + 1,3*floor((j-1)/3) + 1);
        end
    end
end

