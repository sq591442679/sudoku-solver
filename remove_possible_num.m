function [possible_data] = remove_possible_num(possible_data,num,x,y,block_num_x,block_num_y)
possible_data{x,y}=setdiff(possible_data{x,y},possible_data{x,y});
for i = 1:9
    %disp(possible_data{x,i});
    possible_data{x,i}=setdiff(possible_data{x,i},num);
    %disp(possible_data{x,i});
    %disp(possible_data{i,y});
    possible_data{i,y}=setdiff(possible_data{i,y},num);
    %disp(possible_data{i,y});
end
for i=0:2
    for j=0:2
        possible_data{block_num_x+i,block_num_y+j}=setdiff(possible_data{block_num_x+i,block_num_y+j},num);
    end
end