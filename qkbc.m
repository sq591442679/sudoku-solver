function [possible_data] = qkbc(possible_data)
for block_x=0:2
    for block_y=0:2
        tempset=cell(6);
        for i=1:3
            temp1=[];
            temp2=[];
            for j=1:3
                temp1=union(temp1,possible_data{block_x*3+i,block_y*3+j});
                temp2=union(temp2,possible_data{block_x*3+j,block_y*3+i});
            end
            tempset(i)={temp1};
            tempset(i+3)={temp2};
        end
        for i=1:3
            temp=tempset{i};
            for j=1:3
                if j~=i
                    temp=setdiff(temp,tempset{j});
                end
            end
            if ~isempty(temp)
                y=setdiff(1:9,block_y*3+1:block_y*3+3);
                x=block_x*3+i;
                for k=y
                    possible_data{x,k}=setdiff(possible_data{x,k},temp);
                end
                if_change=true;
            end
        end
        for i=4:6
            temp=tempset{i};
            for j=4:6
                if j~=i
                    temp=setdiff(temp,tempset{j});
                end
            end
            if ~isempty(temp)
                x=setdiff(1:9,block_x*3+1:block_x*3+3);
                y=block_y*3+i-3;
                for k=x
                    possible_data{k,y}=setdiff(possible_data{k,y},temp);
                end
                if_change=true;
            end
        end
    end        
end

