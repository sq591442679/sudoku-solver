function [output] = check(output,possible_data,data,n)
if ~checkempty(possible_data)
    [possible_data_array,x,y]=find_min_possiblenum(possible_data);
    %disp([ num2str(x) ',' num2str(y) ]);
    %disp(possible_data_array);
    for k=possible_data_array
        %disp([ num2str(n) '::' num2str(k) ]);
        data_temp=data;
        data_temp(x,y)=k;
        tp=[x,y,k];
        output=[output,tp];
        %disp(data_temp);
        [output,possible_data_temp,data_temp]=mncz(output,data_temp);
        %disp(data_temp);
        [output]=check(output,possible_data_temp,data_temp,n+1);
    end
else
    mk=true;
    for i=1:9
        for j=1:9
            if data(i,j)==0
                mk=false;
            end
            if ~mk
                break;
            end
        end
        if ~mk
            break;
        end
    end
    if mk
        disp('good???');
        disp(data);
        disp('good!!!');
        output=[output,[0,0,0]];
    end
end

