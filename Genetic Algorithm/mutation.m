function population = mutation(population,N,chromatic,edge)
    sz = size(population);
    
    con_nodes = [];
    row = size(edge);
    row = row(1);
    score = 0;
    con = 0;
    
    for indv=1:sz(1)
        chromosome = population(indv,:);
        con_nodes = [];
        con = 0;
        for i=1:row
            node1 = edge(i,1);
            node2 = edge(i,2);
            if chromosome(node1) == chromosome(node2)
                con_nodes = [con_nodes;[node1,node2]];
                con = con + 1;
                
            end
        end
        if con ~= 0
            nodes = unique(con_nodes(:,1));
            for i=1:length(nodes)
                population(indv,nodes(i)) = randi([1,chromatic]);
            end
        end
    end
   
end

