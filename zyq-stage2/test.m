function test()
    x = 1:360;
    for input = 1:360
        y1(input) = zyq_sin(input);
        y2(input) = sin(input*(pi/180));
        error = abs(y1-y2);
    end
    figure(1);
    subplot(3,1,1);
    plot(x,y1);
    title('�Ա�sin����������ͼ'); xlabel('�Ƕ�'); ylabel('sin����ֵ');
    subplot(3,1,2);
    plot(x,y2);
    title('ϵͳsin����������ͼ'); xlabel('�Ƕ�'); ylabel('sin����ֵ');
    subplot(3,1,3);
    plot(x,error);
    title('�������ͼ'); xlabel('�Ƕ�'); ylabel('�������');