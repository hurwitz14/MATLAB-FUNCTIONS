function polynomial = coefficient2polynomial(coefficient, Variable_text)
% �˺����Զ���ʽϵ��Ϊ���룬����ʽ�ı�Ϊ���
% coefficientΪ����ʽϵ������ʽҪ��Ϊ���к���
% Variable_textΪ����Ϊ������
% ���Ŀ���ǽ���ϵ�OCV-SOCϵ��ת��ΪOCV-SOC��ϵʽ
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