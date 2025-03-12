function [k,b]=myolxfun(x,y)
if length(x)~=length(y)
    'WRONG'
    return
end
n=length(x);
k=(x*y'-n*mean(x)*mean(y))/(x*x'-n*mean(x)^2);
b=mean(y)-k*mean(x);
end