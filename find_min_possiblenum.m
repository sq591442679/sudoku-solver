function [possible_data_array,x,y] = find_min_possiblenum(possible_data)
cp=10;
for i=1:9
    for j=1:9
        if ~isempty(possible_data{i,j}) && length(possible_data{i,j})<cp
            cp=length(possible_data{i,j});
            possible_data_array=possible_data{i,j};
            x=i;
            y=j;
        end
    end
end

