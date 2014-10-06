function [ X ] = stocks( )
%SOTCKS Summary of this function goes here
%   Detailed explanation goes here

f = [5; 5; 6; 10; 5; 4];

[A,b]=constraints();

X = zeros(100,1);
I = zeros(100,1);

for i=1:100
    I(i,1) = i;
    x = linprog(f, A, b, [], [], (i/100)*responsableDAtelier(), []);

    X(i,1) = sum(x);
end

plot(I,X);

end

