function [ X ] = stocks( )
%SOTCKS Summary of this function goes here
%   Detailed explanation goes here

f = [5; 5; 6; 10; 5; 4];

[A,b]=constraints();

X = linprog(f, A, b, [], [], 0.8*comptable(), []);

end

