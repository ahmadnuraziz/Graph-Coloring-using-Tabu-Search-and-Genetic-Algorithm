function [con,con_nodes] = cal_conflict(color,edge)
    con = 0;
    con_nodes = [];
    row = size(edge);
    row = row(1);
    for i=1:row
        node1 = edge(i,1);
        node2 = edge(i,2);
        if color(node1) == color(node2)
            con_nodes = [con_nodes;[node1,node2]];
            con = con + 1;
        end
    end
end

