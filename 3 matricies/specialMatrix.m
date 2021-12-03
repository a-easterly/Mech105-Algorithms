function [A] = specialMatrix(n,m,a,b)

n=nargin
 
if  n > 2 
     error('Error. Use two arguments')
   
 end
%Custom matrix, with n a the number of rows and m as the number of columns
% the boarder numbers are the row/column numbers. 
%the points in the middle are the sum of the digits directly above and to
%the left. if there is more than two arguments imputed, the function will
%simply display an error about incorrect number of imputs.
%A is a reference matrix following the parameters set 
%A=[ 1 2 3 4 ;  2 4 7 11; 3 7 14 25 ; 4 11 25 50]
if  nargin > 2 
     error('Error. Use two arguments')
   
 end
%B zeros extablishes the frame for the matrix size. It is adjusted to have
%correct digits
B = zeros(n,m);

% for the first row, numbers should go up by 1 with every additional
% columns to number each starting at 1
for i = 1:n;
    B(i, 1) = i;
end 
%the left column numbers each row
for i =1:m;
    B(1, i) = i;
end 
% for the second column to the number of desired colums, each value in each
% row is adjusted to match the requirement of left and upper value summed.
for c = 2:m;
    for r = 2:n;
        B(r,c) = B(r-1, c) + B(r,c-1);
    end
    
   
end
%Display the final matrix created
     B
end

