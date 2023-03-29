clc;clear all; close all;
% define the input signal
t=0:2*pi/100:5*pi;
A=10;
x=A*sin(t);
% x=audioread('D:\Yekra\OneDrive - BUET\MatLab works\DSP Lab Test1\Speech 1-10 Rakib.mp3');
% x=x(1:10000);
%plot the original signal
plot(x)
hold on

% calling the adaptive delta modulation function
ADMout = adeltamod(x, 1, 0.1,0.3);
plot(ADMout);