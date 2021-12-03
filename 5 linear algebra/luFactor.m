function [L,U,P] = luFactor(A)
%A is the imput square matrix
%   L is the lower triangle
%   U is the upper triangle
%   P is the pivot matrix
a=A;
n = size(a,1);
if A(n,n)~=0;
for x = 1:n;
    y = x+1:n; %skips over the first row of the matrix as to not change the values
    a(y,x) = a(y,x)/a(x,x); %Divides element by the element above for first row only
    a(y,y) = a(y,y)-(a(y,x)*a(x,y)); % multiplies the second column by the previous value in each row
end
else 
    error("not a square matrix");
end

L=tril(a,-1)+d; %focuses to a lower triangle with 1s replacing the middle line
U=triu(a); %focuses on upper triangle %creates combined matrix from PA=LU to find P
P=(L*U)\A;
end

