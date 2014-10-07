function [ stock ] = getStock( x )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

QMP = [1 2 1 5 0 2;
       2 2 1 2 2 1;
       1 0 3 2 2 0];
   
stock = 0;
for j=1:size(x,1)
    stock = stock + x(j)*(sum(QMP(:,j))+1);
end
   

end

