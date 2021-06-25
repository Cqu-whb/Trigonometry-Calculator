function m=xf_tanx(x)
 x=x*pi/180;
m=tanx(x);
m = roundn(m,-2);

%%
function t=tanx(x)
double m;
 while x<=(-pi/2) 
     x=x+pi;
 end
  while x>pi/2 
     x=x-pi;
  end
 if x==pi/2
     disp("error");
     t=inf;
 elseif x==0
     t=0;
 elseif x>0
     t=x+1/3*nth(x,3)+2/15*nth(x,5)+17/315*nth(x,7)+62/2835*nth(x,9)+1382/155925*nth(x,11)+21844/608107*nth(x,13)+929569/638512875*nth(x,15);
 else
     x=abs1(x);
     m=x+1/3*nth(x,3)+2/15*nth(x,5)+17/315*nth(x,7)+62/2835*nth(x,9)+1382/155925*nth(x,11)+21844/608107*nth(x,13)+929569/638512875*nth(x,15);
     t=-m;
 end
end

%%
function t=nth(x,n)
double t;
 if n>0
     t=x*nth(x,n-1);
 elseif n==0
     t=1;
 else 
     t=(1/x)*nth(x,n+1);
 end
end
%%
function t=Factorial(x)
if x==1||x==0
    t=1;
else
    t=1.0*x*Factorial(x-1);
end
end
%%
function t=abs1(x)  
if x<0
    t=-x;
else
    t=x;
end
end
end
