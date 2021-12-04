function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated

n=length(x);
if length(y)~= n, error('vectors must have equal amount of values'); end
%check for equally spaced data
for i=1:n-2;
    if (x(i+1)-x(i))~=(x(i+2)-x(i+1))
        error('x values must be equally spaced')
    end
end
%inform the user if the number of points is even and the trapezoidal rule
%must be used
if rem(n,2)==0;
    warning('must use trap rule for final value')
    %simpson's 1/3 rule is used:
 for k = n-1;
    a=x(1);
    b=x(k);
    %sum even y-points for formula
    c=sum(x(2:2:k-1));
    %sum odd y-values for formula
    d=sum(x(3:2:end));
B = (b-a)*((y(1)+(4*c)++(2*d)+y(k))/(3*n));

 end
%trapezoidal applied for the end 
for k=n;
    f1=y(k);
    f2=y(k-1);
    a=x(k-1);
    b=x(k);
D = (b-a)*((f1+f2)/2);
I=D+B;
end

else
    %trapezoidal rule alone
    for k = n;
    a=x(1);
    b=x(k);
    c=sum(x(2:2:k-1));
    d=sum(x(3:2:k-1));
B = (b-a)*((y(1)+(4*c)++(2*d)+y(k))/(3*n));
i(k,1)=B;
I=B;
    end

end