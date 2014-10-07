function [ M ] = matriceDeGain( )
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
 
end

