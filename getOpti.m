function [ x ] = getOpti( f, lb, ub )
%GETOPTI Summary of this function goes here
%   if no ub, then ub must be equal to []
%   lb by default must be equal to zeros(6,1);

[A, b] = constraints();

x = linprog(f, A, b, [], [], lb, ub);

end

