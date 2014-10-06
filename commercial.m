function [ X ] = commercial( )
%COMMERCIAL Summary of this function goes here
%   Detailed explanation goes here

f = [1; 1; 1; -1; -1; -1];

[A,b]=constraints();
    
X = linprog(f, A, b, [], [], zeros(6,1), []);

end

