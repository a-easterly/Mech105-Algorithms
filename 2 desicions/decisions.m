% Specify the variables needed to solve this problem (ie. height of each section, diameter, radiaus, ...)
%   It is alwasy easier to work with variables (diameter_cyl = 25) than to use numbers everywhere, since a 
%   diameter indicates something specific but the number 25 could mean anything


% Specify the height of the water
h = 20;
% Now compute the volume. Using conditional statments you will want to first check the height makes sense,
% and then solve the volume depending on what portion of the tank has been filled.
% Make sure that your volume is stored in the variable v! (OR IT WILL BE MARKED AS WRONG)
% You may find it more convenient to move v around in you code, it is only given here to indicate what variable to use.
 
    if h > 35 
            fprintf('Not Possible');
  else
      if h<=0
        fprintf('Not Possible');  
else
    if h <= 19 & h > 0
        v = h * pi * (12.5^2) 
         units = '%f meters^3';
 fprintf(units, v)
    else    
           
   
if  h <= 35 & h >19 
    r= 12.5;
    angle = atand(14/10.5);
    R = 12.5 + ((h-19)/tand(angle));
    top= (1/3) * pi * (h-19) * (r^2 + r * R + R^2);
    bottom = 19 * pi * (12.5^2);
    v = top + bottom;
     units = '%f meters^3';
 fprintf(units, v)

        end
    end
      end
 end
