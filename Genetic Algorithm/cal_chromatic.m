function kromatik = cal_chromatic(edge,N)
    degree = zeros(N,1);
    for i=1:length(edge)
        degree(edge(i)) = degree(edge(i)) + 1;
    end
    kromatik = max(degree+1);
end

