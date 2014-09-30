function [ x ] = getOpti( f )
%GETOPTI Summary of this function goes here
%   Detailed explanation goes here

[A, b, lb] = constraints();

x = linprog(f, A, b, [], [], lb);

end

