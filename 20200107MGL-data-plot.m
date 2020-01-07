num = xlsread("48Ah_OCV-SOC_fromMGL.xlsx");
ocv_minus20  =num(1,:);
ocv_minus10  =num(2,:);
ocv_0  =num(3,:);
ocv_10  =num(4,:);
ocv_25  =num(5,:);
ocv_50  =num(6,:);
axis = 0:1:10;
axis = 100.*axis;
axis = axis./10;
figure(1)
plot(axis,ocv_minus20)
hold on;plot(axis,ocv_minus10)
hold on;plot(axis,ocv_0)
hold on;plot(axis,ocv_10)
hold on;plot(axis,ocv_25)
hold on;plot(axis,ocv_50)
legend('-20','-10','0','10','25','50')
temperature= [-20 -10 0 10 25];
capacity = [39.935 41.500 44.983 45.400 49.200];
plot(temperature, capacity);
