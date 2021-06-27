# inverter
In silico simulation of genetically-encoded inverter.

# Requirements
* Python
* MATLAB (probably works with Octave as well)
* Stochastirator, by Eric Lyons (https://opnsrcbio.molsci.org/stochastirator/stoch-main.html)

# Usage
The `.rxns` file specifies chemical reactions, and the `.species` file lists starting quantities of each molecule. `gen.py` is a Python script that creates more files from an array.

The MATLAB files calculate parameters of the system. `reliability.m` calls `stoch`, then parses the resulting `.out` file.
