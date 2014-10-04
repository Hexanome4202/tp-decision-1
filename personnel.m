function [ f ] = personnel( )
%PERSONNEL Summary of this function goes here
%   Detailed explanation goes here

f = [13; 1; 11; 7; 20; 50];

[Aperso, bperso] = constraints();

Aperso(11,:) = -1*getOpti(comptable(), zeros(6,1), []);

bperso(11) = 0.8*sum(getBenef(Aperso(11,:)));

linprog(f, Aperso, bperso, [], [], zeros(6,1), []);

end

