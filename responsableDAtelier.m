function [ x ] = responsableDAtelier()

[ A, b ] = constraints();

f = [-1; -1; -1; -1; -1; -1];

x = linprog(f, A, b, [], [], zeros(6,1), []);
end

