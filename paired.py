# coding=utf-8

import numpy as np
import sys
from scipy import stats

argomenti=[]
for eachArg in sys.argv:
	#print(eachArg)
	argomenti.append(eachArg)

if (len(argomenti) != 2):
	print("stop")
	sys.exit()

#print("----------------elaboro il file  ", argomenti[1])

#apri file 
filename=argomenti[1]
f_dati=open(filename, 'r')


num_lines = sum(1 for line in f_dati)
print("Number of data     "+str(num_lines))
f_dati.seek(0)

v_sample=np.zeros(num_lines)
v_bianco=np.zeros(num_lines)
v_diff=np.zeros(num_lines)

ll = 0
for line in f_dati:
	pippo=line.split()
	v_bianco[ll] = float(pippo[2])	
	v_sample[ll] = float(pippo[6]) 
	v_diff[ll]   = float(pippo[8]) 
	ll = ll + 1

print("Blank min ",v_bianco)
print("Sample min ",v_sample)
print("Diff   ",v_diff)

print("Mean of the difference %6.4f" % stats.tmean(v_diff), " +- %6.4f"  % (stats.tstd(v_diff)/np.sqrt(float(num_lines-1)) ) )

print("---- t-TEST ---- ind stands for unpaired, rel stands for paired")
print(stats.ttest_ind(v_bianco, v_sample))
print(stats.ttest_rel(v_bianco, v_sample))

print("Blank average value %6.4f" % (float(stats.tmean(v_bianco))))

print("Sample average value %6.4f" % (float(stats.tmean(v_sample))))

print(stats.ttest_rel(v_bianco, v_sample))

print(stats.tstd(v_bianco))
print(stats.tstd(v_sample))

print("Blank average value norm %6.4f" % (float(stats.tmean(v_bianco))/(stats.tmean(v_bianco))))
print("Sample average value norm %6.4f" % (float(stats.tmean(v_sample))/(stats.tmean(v_bianco))))
