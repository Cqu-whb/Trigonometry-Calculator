function result=zyq_sin(input_angle)
    if input_angle >= 0
        angle = pi * (input_angle / 180);		    
        result = 0;  
        s = 1;						
        denominator = 1;				
        numerator = angle;			
        i=1;
        while numerator / denominator >= 1e-10
            result = result + s * numerator / denominator;
            numerator = numerator* angle * angle;
            denominator = denominator * 2 * i * (2 * i + 1);
            s =s * -1;
            i = i + 1;
        end
    else
        angle = pi * (abs(input_angle) / 180);
        result = 0;  
        s = 1;						
        denominator = 1;				
        numerator = angle;			
        i=1;
        while numerator / denominator >= 1e-10
            result = result + s * numerator / denominator;
            numerator = numerator* angle * angle;
            denominator = denominator * 2 * i * (2 * i + 1);
            s =s * -1;
            i = i + 1;
        end
        result = -result;
    end
    result = roundn(result,-2);