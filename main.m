clc;
clear;
data_in=xlsread('SudouM1.xlsx');
%%
tic;
output=[];
[output,possible_data,data]= mncz(output,data_in);
[output]=check(output,possible_data,data,1);
t=toc;
disp(t);