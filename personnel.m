function [ xFinal ] = personnel( )
%PERSONNEL Summary of this function goes here
%   Detailed explanation goes here

    f = [13; 1; 11; 7; 20; 50];

    [A, b] = constraints();

    M =[8 5;
        1 0;
        11 0;
        0 7;
        10 10;
        25 25];
    
    I = zeros(100);
    X1 = zeros(100);
    X2 = zeros(100);
    TOT = zeros(100);

    for i=1:100
        I(i,1) = i;
        %x = linprog(f, A, b, [], [], (i/100)*comptable(), []);
        Aperso = A;
        Aperso(11,:) = -function_of_comptable();
        bperso = b;
        bperso(11,:) = -(i/100)*sum(getBenef(comptable()));
        x = linprog(f, Aperso, bperso, [], [], zeros(1,6), []);

        x1 = sum(x.*M(:,1));
        X1(i,1) = x1;

        x2 = sum(x.*M(:,2));
        X2(i,1) = x2;

        TOT(i,1) = x1 + x2;
        
        %Solution optimale
        if i==80
            xFinal = x;
        end
        
    end
    hold on;
    plot(I,X1, 'RED');
    plot(I,X2, 'BLUE');
    plot(I,TOT, 'BLACK');
    hold off;

end

