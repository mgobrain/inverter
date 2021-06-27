function delayedplot(matfile)
load(matfile);
set(gcf, 'color', 'white');
figure(1);
scatter(input_pops,pops_o)
title('Output PoPS vs. input PoPS (non-specific binding)');
xlabel('Input PoPS');
ylabel('Output PoPS');
