function edge = connect(data,N)
    pair = [];
    edge = [];
    type = 'undirected';
    if type == 'undirected'
        for i=1:N
            for j=i:N
                if i~=j
                    if ~isnan(data(i,j))
                        if data(i,j) == 1
                            pair = [i,j];
                            edge = [edge ;pair];
                        end
                    end
                end
            end
        end
    else
        for i=1:N
            for j=1:N
                if i~=j
                    if ~isnan(data(i,j))
                        if data(i,j) == 1
                            pair = [i,j];
                            edge = [edge ;pair];
                        end
                    end
                end
            end
        end
    end
end

