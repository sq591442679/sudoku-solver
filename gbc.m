function [output,possible_data,data_in] = gbc(output,possible_data,data_in)
for block_num_x=0:2
    for block_num_y=0:2
        for x=1:3
            for y=1:3
                if ~isempty(possible_data{block_num_x*3+x,block_num_y*3+y})
                    temp=possible_data{block_num_x*3+x,block_num_y*3+y};
                    for i=1:3
                        for j=1:3
                            if i~=x || j~=y
                                temp=setdiff(temp,possible_data{block_num_x*3+i,block_num_y*3+j});
                            end
                        end
                    end
                    if length(temp)==1
                        %disp(x);
                        %disp(y);
                        %disp(temp(1));
                        data_in(block_num_x*3+x,block_num_y*3+y)=temp(1);
                        tp=[block_num_x*3+x,block_num_y*3+y,temp(1)];
                        output=[output,tp];
                        [possible_data] = remove_possible_num(possible_data,temp(1),block_num_x*3+x,block_num_y*3+y,block_num_x*3 + 1,block_num_y*3 + 1);
                    end
                end
            end
        end
    end
end