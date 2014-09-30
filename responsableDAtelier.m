function [ x ] = responsableDAtelier()

[ A, b, lb ] = constraints();

f = [-1; -1; -1; -1; -1; -1];

x = linprog(f, A, b, [], [], lb);




end

