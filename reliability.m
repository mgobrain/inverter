clear all;
close all;
gene_o = 10;
pops_o_max = 1;
pops_to_test = [0:.1:1];
runs_to_test = 10;
pops_o = [1:1:length(pops_to_test)*runs_to_test];
input_pops = [1:1:length(pops_to_test)*runs_to_test];
counter = 1;
pops_now = 0;

for run_now=1:runs_to_test
    %run the simulation
    system('stoch inverter3.species inverter3.rxns.0 4800 2 inv3');
    importfile('inv31.out');
    %calculate output pops
    grad = diff(mo)./diff(Time)/gene_o;
    pops_o(counter) = grad(length(grad)-1);
    input_pops(counter) = pops_now;
    counter = counter + 1;
end

pops_now = pops_now + .1;

for run_now=1:runs_to_test
    %run the simulation
    system('stoch inverter3.species inverter3.rxns.1 4800 2 inv3');
    importfile('inv31.out');
    %calculate output pops
    grad = diff(mo)./diff(Time)/gene_o;
    pops_o(counter) = grad(length(grad)-1);
    input_pops(counter) = pops_now;
    counter = counter + 1;
end

pops_now = pops_now + .1;

for run_now=1:runs_to_test
    %run the simulation
    system('stoch inverter3.species inverter3.rxns.2 4800 2 inv3');
    importfile('inv31.out');
    %calculate output pops
    grad = diff(mo)./diff(Time)/gene_o;
    pops_o(counter) = grad(length(grad)-1);
    input_pops(counter) = pops_now;
    counter = counter + 1;
end

pops_now = pops_now + .1;

for run_now=1:runs_to_test
    %run the simulation
    system('stoch inverter3.species inverter3.rxns.3 4800 2 inv3');
    importfile('inv31.out');
    %calculate output pops
    grad = diff(mo)./diff(Time)/gene_o;
    pops_o(counter) = grad(length(grad)-1);
    input_pops(counter) = pops_now;
    counter = counter + 1;
end

pops_now = pops_now + .1;

for run_now=1:runs_to_test
    %run the simulation
    system('stoch inverter3.species inverter3.rxns.4 4800 2 inv3');
    importfile('inv31.out');
    %calculate output pops
    grad = diff(mo)./diff(Time)/gene_o;
    pops_o(counter) = grad(length(grad)-1);
    input_pops(counter) = pops_now;
    counter = counter + 1;
end

pops_now = pops_now + .1;

for run_now=1:runs_to_test
    %run the simulation
    system('stoch inverter3.species inverter3.rxns.5 4800 2 inv3');
    importfile('inv31.out');
    %calculate output pops
    grad = diff(mo)./diff(Time)/gene_o;
    pops_o(counter) = grad(length(grad)-1);
    input_pops(counter) = pops_now;
    counter = counter + 1;
end

pops_now = pops_now + .1;

for run_now=1:runs_to_test
    %run the simulation
    system('stoch inverter3.species inverter3.rxns.6 4800 2 inv3');
    importfile('inv31.out');
    %calculate output pops
    grad = diff(mo)./diff(Time)/gene_o;
    pops_o(counter) = grad(length(grad)-1);
    input_pops(counter) = pops_now;
    counter = counter + 1;
end

pops_now = pops_now + .1;

for run_now=1:runs_to_test
    %run the simulation
    system('stoch inverter3.species inverter3.rxns.7 4800 2 inv3');
    importfile('inv31.out');
    %calculate output pops
    grad = diff(mo)./diff(Time)/gene_o;
    pops_o(counter) = grad(length(grad)-1);
    input_pops(counter) = pops_now;
    counter = counter + 1;
end

pops_now = pops_now + .1;

for run_now=1:runs_to_test
    %run the simulation
    system('stoch inverter3.species inverter3.rxns.8 4800 2 inv3');
    importfile('inv31.out');
    %calculate output pops
    grad = diff(mo)./diff(Time)/gene_o;
    pops_o(counter) = grad(length(grad)-1);
    input_pops(counter) = pops_now;
    counter = counter + 1;
end

pops_now = pops_now + .1;

for run_now=1:runs_to_test
    %run the simulation
    system('stoch inverter3.species inverter3.rxns.9 4800 2 inv3');
    importfile('inv31.out');
    %calculate output pops
    grad = diff(mo)./diff(Time)/gene_o;
    pops_o(counter) = grad(length(grad)-1);
    input_pops(counter) = pops_now;
    counter = counter + 1;
end

pops_now = pops_now + .1;

for run_now=1:runs_to_test
    %run the simulation
    system('stoch inverter3.species inverter3.rxns 4800 2 inv3');
    importfile('inv31.out');
    %calculate output pops
    grad = diff(mo)./diff(Time)/gene_o;
    pops_o(counter) = grad(length(grad)-1);
    input_pops(counter) = pops_now;
    counter = counter + 1;
end

set(gcf, 'color', 'white');
figure(1);
scatter(input_pops,pops_o)
title('Output PoPS vs. input PoPS (non-specific binding)');
xlabel('Input PoPS');
ylabel('Output PoPS');