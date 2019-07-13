function [tabu_code,tabu] = update_tabu(color,tabu,tabu_code)
    if tabu_code < 7
        tabu(tabu_code,:) = color;
        tabu_code = tabu_code + 1;
        
    else
        tabu(tabu_code,:) = color;
        tabu_code = 1;
    end
    
end

