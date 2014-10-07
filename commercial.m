function [ X ] = commercial( )
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
    x = linprog(f, A, b1, [], [], lb)

    benefs = [benefs sum(getBenef(x))];
    abscisse = abs(x(1)+x(2)+x(3)-x(4)-x(5)-x(6));
    epsilon = [epsilon epsi];
end

plot(epsilon, benefs);

benefs


%Nombre de produits pour le meilleur epsilon :
b1 = [b; epsi; epsi];
x = linprog(f, A, b1, [], [], lb);

sum(x)

end