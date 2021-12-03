## Root Finding 

*From 29 September, 2021*

This code creates a custom function in MATLAB that finds the root of a function using a lower and upper guess. If wanted, a certain desired relative error or maximum number of iterations can be inputted, otherwise it defaults to .0001% and 200, respectively. After running, the root, function evaluated at the root, approximate error, and number of iterations is displayed. If less than three variables are inputted, then an error is displayed. If there is not roots found between the guesses, another error is displayed.

The function is stored as "falsePosition" can be called as `falsePosition(func,xl,xu,es,maxit,vargin)`, where "func" is the equation, "xl" is the lower estimate, 'xl" is the upper estimate, "es" is desired error, "maxit" is desired maximum iterations, and "vargin" is any other parameters.

The function introduces new functions/commands `nargin`, `varargin`, `isempty`, `||`, `while` loops, `&&`, `else`, and needs an equation with `@x` to make the function work for any polynomial equation. Code also contains comments on processes and explaination of steps.

This function is helpful when the equation being used has a difficult root to find by hand. An example of this would be the following equation *(figure 1)*, where the user is trhying to find the angle needed to move the box with a certain amount of force. This can be found by subtracting the certain force frome both sides so that when the angle makes the original equation equal to the force, the new equation will equal zero, aka the root of the function. It is difficult to find the angle in this situation, so an algorithm would be useful.

![Untitled drawing (6)](https://user-images.githubusercontent.com/95257867/144670016-8ec99dad-0b32-492e-8c38-f14e03d5319f.jpg)

*figure 1*
