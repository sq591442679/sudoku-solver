function [output,possible_data,data_in] = hbc(output,possible_data,data_in)
for x=1:9
    for y=1:9
        if ~isempty(possible_data{x,y})
             temp1=possible_data{x,y};
             temp2=possible_data{x,y};
             for i=1:9
                if i~=y 
                    temp1=setdiff(temp1,possible_data{x,i});
                end
                if i~=x
                    temp2=setdiff(temp2,possible_data{i,y});
                end
             end
             if length(temp1)==1
                %disp(x);
                %disp(y);
                %disp(temp(1));
                data_in(x,y)=temp1(1);
                tp=[x,y,temp1(1)];
                output=[output,tp];
                [possible_data] = remove_possible_num(possible_data,temp1(1),x,y,3*floor((x-1)/3) + 1,3*floor((y-1)/3) + 1);
             else
                 if length(temp2)==1
                    %disp(x);
                    %disp(y);
                    %disp(temp(1));
                    data_in(x,y)=temp2(1);
                    tp=[x,y,temp2(1)];
                    output=[output,tp];
                    [possible_data] = remove_possible_num(possible_data,temp2(1),x,y,3*floor((x-1)/3) + 1,3*floor((y-1)/3) + 1);
                 end
             end   
         end
    end
end

