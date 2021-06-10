clear; clc;

x = 1:10;
y = sin(2*pi/100*x);
tick1 = x;
tick2 = x+10;
tick3 = {'a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j'};

labelArray = [tick3; compose('%.1f',tick1); compose('%.1f',tick2)];
labelArray = strjust(pad(labelArray),'center');
tickLabels = strtrim(sprintf('%s\\newline%s\\newline%s\n', labelArray{:}));


figure(1);
plot(x,y);
ax = gca(); 
% ax.XTick = x; 
% ax.XLim = [0,11];
ax.XTickLabel = tickLabels; 


