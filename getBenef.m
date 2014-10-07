function [ benef ] = getBenef( x )

    res = function_of_comptable;
    for n = 1:size(x,2)
        benef = res(:,n).*x;
    end
    benef = sum(benef);
    
end

