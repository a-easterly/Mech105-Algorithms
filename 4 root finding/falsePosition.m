function [root, fx, ea, iter] = falsePosition(func,xl,xu,es,maxit,varargin)
%falsePosition finds the root of a function using false position method
%   inputs: 
        %func(function evaluate), 
        %xl(lower guess), 
        %xu(upperguess),
        %es(desired relative error, default .0001% , 
        %maxit (max iterations) default 200, 
        %vargin (additional parameters)
%   outputs: 
        %root(estimate location), 
        %fx(function evaluated at root)
        %est(appr. error), 
        %iter(number of iterations)
  %if there are not enough input variables, the following error will
  %display
if nargin<2,error('not enough input variables'),end
    %check to see if there is a sign change in these bounds
trial=func(xl,varargin{:})*func(xu,varargin{:});
%if not, there is no root between the bounds
    if trial>0, error('no root'); end
    %if no variable for desired error, default is 0.0001
     if nargin<4|| isempty(es), es =.0001; end
     %if there is no defined maximum iteration, the default is 200
    if nargin<5||  isempty(maxit),  maxit = 200; end
    %starting values
iter = 0; a=xl; ea=100; 
while iter <= (maxit-1) && ea>=es
      iter=iter+1;
        a2=a;
      a=(xl-xu)/2;
      a = xu - ((func(xu)*(xl-xu))/(func(xl)-func(xu)));
      ea = abs((a-a2)/a);
      trial=func(xl,varargin{:})*func(a,varargin{:});
  if trial < 0;
    xu = a;
    
  else
      if trial > 0;
    xl = a;
      
  else
      ea=0;
      end
  end
end
%displays the following values 
root= a, fx = func(a), ea, iter
end

