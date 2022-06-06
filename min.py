
import numpy as np
import sys

argomenti=[]
for eachArg in sys.argv:
	#print(eachArg)
	argomenti.append(eachArg)

if (len(argomenti) != 3):
	print("stop")
	sys.exit()

#print("elaboro il file  ", argomenti[1])
#print("uso la colonna   ", argomenti[2])


#apri file 
filename=argomenti[1]
f_in=open(filename, 'r')

V=np.zeros(shape=[121])
I=np.zeros(shape=[121])
ll = -1
for line in f_in:
	if not line.lstrip().startswith('#'):
		ll = ll + 1
		column=line.split()
		V[ll]=float(column[0])
		I[ll]=float(column[int(argomenti[2])-1])
			

minimo=np.min(I)
in_minimo=np.argmin(I)

#print(minimo)
#print(in_minimo)


print(argomenti[1]+"\t"+argomenti[2]+"\t"+str(V[in_minimo])+"\t"+str(minimo))




