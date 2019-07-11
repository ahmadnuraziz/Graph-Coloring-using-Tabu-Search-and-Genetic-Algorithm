function sol = neigh_solution(color,tabu,edge,N,kromatik)
sol = [];
clr_temp = color;
for i=1:10
    node  = randi(N);
    color_node = randi(kromatik);
    while color(node) == color_node
        color_node = randi(kromatik);
    end
    clr_temp(node) = color_node;
    while ismember(clr_temp,tabu,'rows')
        color_node = randi(kromatik);
    end
    sol = [sol;clr_temp];
end

end

