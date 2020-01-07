function polynomial = coefficient2polynomial(coefficient, Variable_text)
% 此函数以多项式系数为输入，多项式文本为输出
% coefficient为多项式系数，格式要求为单行横置
% Variable_text为变量为本输入
% 最初目的是将拟合的OCV-SOC系数转换为OCV-SOC关系式
% Stefan@BIT 20200107
[row,col] = size(coefficient);
result = '';
for i = 1:1:col
    if coefficient(1,i)<0
        operation = '';
    else
        operation = '+';
    end
    result  = strcat(result,operation,num2str(coefficient(1,i)),'*',Variable_text,'^',num2str(col-i));
end
polynomial = result;
end