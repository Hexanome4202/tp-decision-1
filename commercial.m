function [ xFinal ] = commercial( )
%COMMERCIAL Summary of this function goes here
%   Detailed explanation goes here


[ A, b ] = constraints();

A = [A;  1 1 1 -1 -1 -1; -1 -1 -1 1 1 1];

lb = [0; 0; 0; 0; 0; 0];

epsilon = [];

benefs = [];



f=-function_of_comptable;
    
for epsi = 0:600
    b1 = [b; epsi; epsi];
    x = linprog(f, A, b1, [], [], lb);

    benefs = [benefs (getBenef(x)/getBenef(comptable())*100)];
    abscisse = getEcart(x);
    epsilon = [epsilon epsi];
    
    %Solution Optimale
    if epsi == 0
        xFinal = x;
    end
end

plot(benefs, epsilon);

end