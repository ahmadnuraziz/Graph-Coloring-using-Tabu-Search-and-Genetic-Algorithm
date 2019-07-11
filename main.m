clc
clear
%data = xlsread('data.xlsx');
rng(0)
N    = 500;
data = gen_data(N);
edge = [];
tabu = [];

conflict = 0;
conflict_history = [];
conflict_nodes = [];
chromatic = 0;

edge = connect(data,N);
tabu = zeros(7,N);
chromatic = cal_chromatic(edge,N);
color = randi([1,chromatic],1,N);
[conflict,conflict_nodes] = cal_conflict(color,edge);
conflict_history = [conflict_history;conflict];

iteration = 0;

tabu_code = 1;
step = [];
while conflict~=0
    solutions = neigh_solution(color,tabu,edge,N,chromatic);
    len = size(solutions);
    len = len(1);
    
    for i=1:len
        color_temp = solutions(i,:);
        [conflict,conflict_nodes] = cal_conflict(color_temp,edge);
        
        
        if conflict<conflict_history(end)
            [tabu_code,tabu] = update_tabu(color_temp,tabu,tabu_code);
            color = color_temp;
            conflict_history = [conflict_history;conflict];
            step = [step;color];
           conflict
           break
        end
    end
    tabu_code = 1;
    
end

color_code = rand(chromatic,3);
color_node = [];
for i=1:N
    code =  color_code(color(i),:);
    color_node = [color_node;code];
end

 G = graph;
 row = size(edge);
 row = row(1);
 for i=1:row
     G = addedge(G,edge(i,1),edge(i,2));
 end
 p = plot(G,'NodeColor',color_node);
 p.MarkerSize = 8;  