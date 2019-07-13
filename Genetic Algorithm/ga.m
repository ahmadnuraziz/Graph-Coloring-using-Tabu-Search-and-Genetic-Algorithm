clc
clear
%data = xlsread('data.xlsx');
rng(0)
N    = 100;
data = gen_data(N);
edge = [];

conflict= 0;
conflict_history = [];
conflict_nodes = [];
chromatic = 0;

edge = connect(data,N);
num_population = 30;
population = zeros(num_population,N);
chromatic = cal_chromatic(edge,N);
population = randi([1,chromatic],num_population,N);

iteration = 0;

parents_code = 1;
solutions = [];
while iteration < 100
    %fitness
    %selection
    %crossover
    %mutation
    score = [];
    parents = [];
    for i=1:num_population
        score = [score;fitness(population(i,:),edge,i)];
        if score(i) == 0
            solutions = [solutions;population(i,:)];
        end
    end
    score = sortrows(score);
    parents = selection(population,score);
    population = crossover(parents,N,chromatic);
    population = mutation(population,N,chromatic,edge);
    iteration = iteration +1
    score   
end
