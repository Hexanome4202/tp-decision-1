function [ X ] = stocks( )
%SOTCKS Summary of this function goes here
%   Detailed explanation goes here

f = [5; 5; 6; 10; 5; 4];

[A,b]=constraints();

X = zeros(100,1);
I = zeros(100,1);

for i=1:100
    I(i,1) = i;
    Aperso = A;
    Aperso(11,:) = -function_of_comptable();
    bperso = b;
    bperso(11,:) = -(i/100)*sum(getBenef(comptable()));
    x = linprog(f, Aperso, bperso, [], [], zeros(6,1), []);

    X(i,1) = sum(x);
end

plot(I,X);

end

