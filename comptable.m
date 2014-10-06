function [X] = comptable()
    M= [8 7 8 2 5 5 5;
        15 1 1 10 0 5 3;
        0 2 11 5 0 3 5;
        5 15 0 4 7 12 8;
        0 7 10 13 10 8 0;
        10 12 25 7 25 0 7];
    
    M=M./60;
    
    CH = [2 2 1 1 2 3 3];
    
    QMP = [1 2 1 5 0 2;
        2 2 1 2 2 1;
        1 0 3 2 2 0];
    
    PA = [3; 4; 2];
    
    PV = [20 27 26 30 45 40];
    
    QMPA = zeros(3,6);
    
    for n = 1:size(QMP,2)
        QMPA(:,n) = QMP(:,n).*PA;
    end
    
    
    MCH = zeros(6,7);
    
    for n = 1:size(M,1)
        MCH(n,:) = M(n,:).*CH;
    end
    MCH=sum(MCH(:,:),2);
    QMPA=sum(QMPA(:,:),1);
    
    f=-(PV'-MCH-QMPA');
    
    [A,b]=constraints();
    
    X = linprog(f, A, b, [], [], zeros(6,1), []);
end

