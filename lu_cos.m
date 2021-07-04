% cos(x) = 1 - x^2 / 2! + x^4 / 4! + ……

function result= lu_cos(input)
	angle = pi * (input / 180);	%输入转换为角度	    
	result = 0;  			
	symbol = 1;			%符号			
	sub_result = 1;				
	denominator = 0;		%展开项中各项的2k
	i=1;				
while abs(sub_result) >= 1e-6
    result = result + sub_result;			
    symbol = -symbol;
    denominator = denominator + 2	
    sub_result = symbol * angle ^ 2 / factorial(denominator)
end
result = roundn(result,-2);
