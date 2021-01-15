function [possible_data,data_in] = find_possible_num(data_in)
possible_data=cell(9,9);
for i=1:9
    for j=1:9
        if data_in(i,j)==0
            row_data={setdiff(1:9,data_in(i,:))};%ÐÐ
            col_data={setdiff(1:9,data_in(:,j))};%ÁÐ
            block_num_x=3*floor((i-1)/3) + 1;
            block_num_y=3*floor((j-1)/3) + 1;
            block_data={setdiff(1:9,data_in(block_num_x:block_num_x+2,block_num_y:block_num_y+2))};
            temp=intersect(row_data{:},col_data{:});
            temp=intersect(temp,block_data{:});
            possible_data(i,j)={temp};
        end
    end
end