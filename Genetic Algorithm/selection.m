function parents= selection(population,score)
    sz      = size(population);
    parents = zeros(sz(1),sz(2));
    for i=1:3
        parents(i,:) = population(score(i,2),:);
    end
    
    for i=4:sz(1)/2
        rnd = randi([sz(1)/2,sz(1)]);
        parents(i,:) = population(score(rnd,2),:);
    end
end

