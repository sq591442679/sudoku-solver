function [mark] = checkempty(possible_data)
mark=true;
for i=1:9
    for j=1:9
        if ~isempty(possible_data{i,j})
            mark=false;
        end
        if ~mark
            break;
        end   
    end
    if ~mark
        break;
    end
end

