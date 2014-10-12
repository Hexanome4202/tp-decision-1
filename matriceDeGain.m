function [ M, res, pourcentage ] = matriceDeGain( )
  %% Profit
    %Comptable
       produitsComptable = comptable();
       pComptable = getBenef(produitsComptable);
      
    %Responsable d'Atelier
       produitsAtelier = responsableDAtelier();
       pAtelier = getBenef(produitsAtelier);
       
    %Responsable des stocks
       produitsStocks = stocks();
       pStocks = getBenef(produitsStocks);
       
    %Responsable commercial
       produitsCommercial = commercial();
       pCommercial = getBenef(produitsCommercial);
       
    %Responsable du personnel
       produitsPersonnel = personnel();
       pPersonnel = getBenef(produitsPersonnel);  
       
  %% Products quantity
    %Comptable
       qComptable = getQteProduit(produitsComptable);
      
    %Responsable d'Atelier
       qAtelier = getQteProduit(produitsAtelier);
       
    %Responsable des stocks
       qStocks = getQteProduit(produitsStocks);
       
    %Responsable commercial
       qCommercial = getQteProduit(produitsCommercial);
       
    %Responsable du personnel
       qPersonnel = getQteProduit(produitsPersonnel);
    
       
  %% Stock quantity
    %Comptable
       sComptable = getStock(produitsComptable);
      
    %Responsable d'Atelier
       sAtelier = getStock(produitsAtelier);
       
    %Responsable des stocks
       sStocks = getStock(produitsStocks);
       
    %Responsable commercial
       sCommercial = getStock(produitsCommercial);
       
    %Responsable du personnel
       sPersonnel = getStock(produitsPersonnel);
    
  %% ecart between 2 families
    %Comptable
       eComptable = getEcart(produitsComptable);
      
    %Responsable d'Atelier
       eAtelier = getEcart(produitsAtelier);
       
    %Responsable des stocks
       eStocks = getEcart(produitsStocks);
       
    %Responsable commercial
       eCommercial = getEcart(produitsCommercial);
       
    %Responsable du personnel
       ePersonnel = getEcart(produitsPersonnel);
    
  %% Use time 3&5
    %Comptable
       uComptable = getUtilisationMachine(produitsComptable);
      
    %Responsable d'Atelier
       uAtelier = getUtilisationMachine(produitsAtelier);
       
    %Responsable des stocks
       uStocks = getUtilisationMachine(produitsStocks);
       
    %Responsable commercial
       uCommercial = getUtilisationMachine(produitsCommercial);
       
    %Responsable du personnel
       uPersonnel = getUtilisationMachine(produitsPersonnel);

  %% Matrix
  M = [
       pComptable qComptable sComptable eComptable uComptable;
       pAtelier qAtelier sAtelier eAtelier uAtelier;
       pStocks qStocks sStocks eStocks uStocks;
       pCommercial qCommercial sCommercial eCommercial uCommercial;
       pPersonnel qPersonnel sPersonnel ePersonnel uPersonnel
      ];
 
  %Premiere solution
%   f = -function_of_comptable;
%   [A,b] = constraints();
%   A = [A; 1 1 1 -1 -1 -1; -1 -1 -1 1 1 1; 5 5 6 10 5 4; -function_of_comptable'];
%   b = [b; 130; 130; 1300; -0.7*pComptable];
%   x = linprog(f, A, b, [], [], zeros(1,6));
%   pourcentage = [(getBenef(x)/pComptable)*100 (getQteProduit(x)/qAtelier)*100 (sStocks/getStock(x))*100 ((qAtelier-getEcart(x))/(qAtelier-eCommercial))*100 (uPersonnel/getUtilisationMachine(x))*100];
%   res = [getBenef(x) getQteProduit(x) getStock(x) getEcart(x) getUtilisationMachine(x)];
%   
  %Deuxieme solution
%   f = [13; 1; 11; 7; 20; 50];
%   [A,b] = constraints();
%   A = [A; -function_of_comptable'; 5 5 6 10 5 4];
%   b = [b; -pPersonnel; 1400];
%   x = linprog(f, A, b, [], [], zeros(1,6));
%   pourcentage = [(getBenef(x)/pComptable)*100 (getQteProduit(x)/qAtelier)*100 (sStocks/getStock(x))*100 ((qAtelier-getEcart(x))/(qAtelier-eCommercial))*100 (uPersonnel/getUtilisationMachine(x))*100];
%   res = [getBenef(x) getQteProduit(x) getStock(x) getEcart(x) getUtilisationMachine(x)];
  
  %Troisième solution
%   f = -function_of_comptable;
%   [A,b] = constraints();
%   A = [A; 1 1 1 -1 -1 -1; -1 -1 -1 1 1 1; 5 5 6 10 5 4; -function_of_comptable'];
%   b = [b; 120; 120; 1200; -0.70*pComptable];
%   x = linprog(f, A, b, [], [], zeros(1,6));
%   pourcentage = [(getBenef(x)/pComptable)*100 (getQteProduit(x)/qAtelier)*100 (sStocks/getStock(x))*100 ((qAtelier-getEcart(x))/(qAtelier-eCommercial))*100 (uPersonnel/getUtilisationMachine(x))*100];
%   res = [getBenef(x) getQteProduit(x) getStock(x) getEcart(x) getUtilisationMachine(x)];
  
  %Quatrième solution
  f = [-1; -1; -1; -1; -1; -1];
  [A,b] = constraints();
  A = [A; -function_of_comptable'; 5 5 6 10 5 4];
  b = [b; -pAtelier; 1400];
  x = linprog(f, A, b, [], [], zeros(1,6));
  pourcentage = [(getBenef(x)/pComptable)*100 (getQteProduit(x)/qAtelier)*100 (sStocks/getStock(x))*100 ((qAtelier-getEcart(x))/(qAtelier-eCommercial))*100 (uPersonnel/getUtilisationMachine(x))*100];
  res = [getBenef(x) getQteProduit(x) getStock(x) getEcart(x) getUtilisationMachine(x)];
end

