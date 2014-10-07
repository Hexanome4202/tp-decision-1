function [ xFinal ] = stocks( )
%SOTCKS Summary of this function goes here
%   Detailed explanation goes here

f = [5; 5; 6; 10; 5; 4];

[A,b]=constraints();

QMP = [1 2 1 5 0 2;
       2 2 1 2 2 1;
       1 0 3 2 2 0];

X = zeros(100,1);
I = zeros(100,1);
coeff = zeros(100,1);
coeff(1,1) = 1;
for i=1:100
    I(i,1) = i;

    Asto = A;
    Asto(11,:) = -function_of_comptable();
    bsto = b;
    bsto(11,:) = -(i/100)*sum(getBenef(comptable()));

    x = linprog(f, Asto, bsto, [], [], zeros(1,6), []);
    X(i,1) = getStock(x);
   
    if i>1
        coeff(i,1) = (X(i,1)-X(1,1))/(i-1);
    end
    
    %Solution optimale
    if i==64
        xFinal = x;
    end
    
end
%plot(I,X);
%figure(2);
%plot(I,coeff);

end

