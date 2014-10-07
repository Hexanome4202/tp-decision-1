function [ r ] = getUtilisationMachine( x )
%GETUTIL Summary of this function goes here
%   Detailed explanation goes here

M =[8 5;
    1 0;
    11 0;
    0 7;
    10 10;
    25 25];

r = sum(x.*M(:,1)) + sum(x.*M(:,2));

end

