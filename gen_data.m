function M = gen_data(N)
    M = zeros(N);
    for i=1:N
        for j=i:N
            if i~=j
                prob = rand();
                val = 0;
                if prob>0.5
                    val = 1;
                end
                M(i,j) = val;
                M(j,i) = val;
            end
        end
end

