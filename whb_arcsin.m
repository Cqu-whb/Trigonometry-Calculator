function result = whb_arcsin(input_angle)
    if  input_angle > 1
        msgbox('数据越界，请重新输入！！！');
    elseif input_angle < -1
        msgbox('数据越界，请重新输入！！！');
   else
        mid_value = input_angle;
        result = input_angle;
        n = 1;
        while(abs(mid_value) >= 1e-10)
            mid_value = mid_value *(2 * n - 1) * (2 * n - 1) * input_angle * input_angle / ((2 * n)*(2*n + 1));
            n = n+1;
            result = result + mid_value;
        end
        result = roundn(rad2deg(result),-2);
   end 



