function [X] = comptable()

    f=-function_of_comptable;
    [A,b]=constraints();
    
    X = linprog(f, A, b, [], [], zeros(6,1), []);
end

