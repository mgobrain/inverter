import sys
import string

input = open(sys.argv[1],'r')
content = input.readlines()
input.close()

min = float(sys.argv[2])
max = float(sys.argv[3])
step = float(sys.argv[4])

pops_i = []
num = min
while num <= max:
	pops_i.append(num)
	num += step

pops_string = []
for var in pops_i:
	output = []
	for line in content:
		if line == 'Rate $INPUT\n':
			output.append('Rate '+str(var)+'\n')
		else:
			output.append(line)
	towrite = string.join(output,'')
	script = open(sys.argv[5]+'.'+str(var),'w')
	script.write(towrite)
	script.close()
	pops_string.append(str(var))

index = open(sys.argv[5]+'.index','w')
index.write(string.join(pops_string,'\n'))
index.close()
