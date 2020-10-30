% x = [5 8];
% y = [3 6];
% C = [52 2 4 6; 8 10 12 14; 16 18 20 22];
% C = zeros(3,3,3);
% C = [.1 .2 .3; .4 .5 .6; .7 .8 .9]
[f,Fs] = audioread('love.wav');
info = audioinfo('love.wav');

% C = imread('195751.jpg');
% image(C)
 
% image(C(:,100,:))
c = f(:,2);