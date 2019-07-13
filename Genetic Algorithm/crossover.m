function new_population = crossover(parents,N,chromatic)
    sz   = size(parents);
    init = sz(1)/2+1;
    final = sz(1);
    new_population = parents;
    for i=init:final
        baby = zeros(1,N);
        parent_one = randi([1,init-5]);
        parent_two = randi([1,init-5]);
        while parent_one == parent_two
            parent_one = randi([1,init-5]);
            parent_two = randi([1,init-5]);
        end
        baby(1,1:N/2) = parents(parent_one,1:N/2);
        baby(1,N/2:N) = parents(parent_two,N/2:N);
        new_population(i,:) = baby;
    end
end

