function [possible_data] = sd(possible_data)
for block_x=0:2
    for block_y=0:2
        for i=1:3
            for j=1:3
                x=block_x*3+i;
                y=block_y*3+j;
                if length(possible_data{x,y})==2
                    for ii=1:3
                        for jj=1:3
                            if ii~=i || jj~=j
                                xx=block_x*3+ii;
                            	yy=block_y*3+jj;
                                if isequal(possible_data{x,y},possible_data{xx,yy})
                                    for iii=1:3
                                        for jjj=1:3
                                            if ~((iii==i && jjj==j) || (iii==ii && jjj==jj))
                                                xxx=block_x*3+iii;
                                                yyy=block_y*3+jjj;
                                                possible_data{xxx,yyy}=setdiff(possible_data{xxx,yyy},possible_data{x,y});
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end        
for i=1:9
    for j=1:8
        if length(possible_data{i,j})==2
            for jj=j+1:9
                if isequal(possible_data{i,j},possible_data{i,jj})
                    y=setdiff(1:9,j);
                    y=setdiff(y,jj);
                    for k=y
                        possible_data{i,k}=setdiff(possible_data{i,k},possible_data{i,j});   
                    end
                end
            end
        end
    end
end
for i=1:9
    for j=1:8
        if length(possible_data{j,i})==2
            for jj=j+1:9
                if isequal(possible_data{j,i},possible_data{jj,i})
                    y=setdiff(1:9,j);
                    y=setdiff(y,jj);
                    for k=y
                        possible_data{k,i}=setdiff(possible_data{k,i},possible_data{j,i});   
                    end
                end
            end
        end
    end
end

