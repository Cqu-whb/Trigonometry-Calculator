close all;
clear;
clc;
%   ���������cot��������������ȷ��
sita = 0.1:0.1:179.9;
dy = zeros(1,length(sita));
y1 = zeros(1,length(sita));
y2 = zeros(1,length(sita));
for i=1:1799
    x = i/10;
    [out] = cot_result(x);
    y1(i) = out;
    y2(i) = cotd(x);
    dy = abs(y1-y2);
end

figure(1)
subplot(3,1,1)
plot(sita,y1);
title('0�㵽180�㲻����cot��������ֵ');xlabel('�Ƕ�/��');ylabel('����ֵ');
subplot(3,1,2)
plot(sita,y2);
title('0�㵽180�����cot��������ֵ');xlabel('�Ƕ�/��');ylabel('����ֵ');
subplot(3,1,3)
plot(sita,dy);
title('0�㵽180�㲻����cot���������cot�������߼������ֵ');xlabel('�Ƕ�/��');ylabel('�������ֵ');