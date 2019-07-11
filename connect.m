function edge = connect(data,N)
%this function connect nodes only for undirected case
    pair = [];
    edge = [];
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
end

