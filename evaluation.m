clear;
close all;
clc;

sl = load('sLocation.txt');
sl = sl(:,4);
sl = sum(sl)
cl = load('cLocation.txt');
cl = cl(:,4);
cl=sum(cl)
ll = load('lLocation.txt');
ll = ll(:,4);
ll=sum(ll)
rl = load('rLocation.txt');
rl = rl(:,4);
rl=sum(rl)

figure('Position',[440 378 560 620/3]);
bar([sl cl ll rl ] );
ylabel('Joule');
labels = {'SL','CL', 'LL', 'RL'};
set(gca , 'xticklabel' , labels);
set(gca , 'fontsize' , 16);
set(gca , 'xLim', [0.5 4.5])
