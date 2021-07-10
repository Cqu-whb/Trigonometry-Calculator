function zyq_test()
    x = 1:360;
    for input = 1:360
        y1(input) = zyq_sin(input);
        y2(input) = sin(input*(pi/180));
        error = abs(y1-y2);
    end
    figure(1);
    subplot(3,1,1);
    plot(x,y1);
    title('自编sin函数计算结果图'); xlabel('角度'); ylabel('sin计算值');
    subplot(3,1,2);
    plot(x,y2);
    title('系统sin函数计算结果图'); xlabel('角度'); ylabel('sin计算值');
    subplot(3,1,3);
    plot(x,error);
    title('计算误差图'); xlabel('角度'); ylabel('计算误差');
