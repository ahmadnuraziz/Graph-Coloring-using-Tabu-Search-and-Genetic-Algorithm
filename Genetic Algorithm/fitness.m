function score = fitness(chromosome,edge,indx)
    con = 0;
    con_nodes = [];
    row = size(edge);
    row = row(1);
    score = 0;
    for i=1:row
        node1 = edge(i,1);
        node2 = edge(i,2);
        if chromosome(node1) == chromosome(node2)
            con_nodes = [con_nodes;[node1,node2]];
            con = con + 1;
        end
    end
	score = [con,indx];
    score = sortrows(score);
end

