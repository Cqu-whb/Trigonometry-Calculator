
function result= lu_cos(input)
x = input/180*pi;
 
symbol=1;
sum=0;
my_eps=10^-3;
temp_sum=1;
power=0;
while abs(temp_sum)>my_eps
    sum=sum+temp_sum;
    symbol=-symbol;
    power=power+2;
    temp_sum=symbol*x^power/factorial(power);
end

result = roundn(sum,-2);


