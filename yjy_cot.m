function y = yjy_cot(x)
	if x > 180 
		quotient = x / 180;  
		x = x - quotient * 180;
    end
    if x < -180   
		quotient = x / 180;     
		x = x - quotient * 180;
    end
	if x >= 90
		x = x - 180;
    end
    if x <= -90
		x = x + 180;
    end
	newa = x * 3.1415926 / 180.0;
	y = 1.0 / newa - newa / 3.0 - newa^3 / 45 - 2 * (newa^5) / 945.0;
	if (-0.007 < y < 0.007)
		y = 0;
    end
    y = roundn(y,-2);
end


    

