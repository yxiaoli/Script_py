function [Idx, Dist] = findnn(D1, D2)

	% D1 D2: one histogram per line
    [row,col]=size(D1);
	% Idx should be a  vector,​where Idx(a) contains the index of the 
    Idx = zeros(1,row);
	% descriptor in D2 that matches the descriptor with index a in D1.
    Dist = zeros(row,1);
	% Dist should be a column vector that contains the distance between 
    
    for i = 1:row
        E_dist =sum((D2-D1(i,:)).^2,2);
       Dist(i) = min(E_dist);
       Idx(i) =find(E_dist==Dist(i));
    end 
end
