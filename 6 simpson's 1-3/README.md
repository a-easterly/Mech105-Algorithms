## Simpson's 1/3 Algorithm

*From 12 November, 2021* 

This code creates a custom MATLAB function, called by `Simpson(x,y)`, where x is a vector of equally spaced data and y is another vector of the same length with the coresponding response values to the data. This code is based on the Simpson's 1/3 rule for numerical integration based off of data sets rather than an equation. This is particularly useful when the data trends in an odd way and creates a difficult equation for integrate by hand or to avoid creating an equation from the data altogether. This would be useful to find velocity from an acceleration or position for velocity data. The end data is the total numerical integral. Due to the 1/3 rule requiring an odd number of points, if there is an even number of data points, then the trapexoidal integration rule will be applied.

The code itself introduces new commands/functions such as `sum()`, `rem()`, and `warning`. The code also has more comments on step by step actions.

**Caution! The proper trapezoidal and Simpson 1/3 rule are added, though it may display the wrong answer. Check code before use**