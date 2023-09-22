import sys


# positions obtained from Denis B. Tikhonov and Boris S. Zhorov, 2005 Biophysical journal

cols = []
for i in range(383-1,383+23):
    cols.append(i)
for i in range(738-1,738+23):
    cols.append(i)
for i in range(1220-1,1220+23):
    cols.append(i)
for i in range(1512-1,1512+23):
    cols.append(i)
alCols = []
alCols = []

fh = open(sys.argv[1], 'r')

for line in fh:
    break
seq = ''
for line in fh:
    if line[0] == ">":
        break
    seq += line.strip()
fh.close()

i = 0
k = 0

while cols:
    if seq[k].isalpha():
        if i == cols[0]:
            cols.pop(0)
            alCols.append(k)    
        i += 1
    k += 1

fh = open(sys.argv[1], 'r')
for line in fh:
    break
for line in fh:
    if line[0] ==">":
        print(line.strip())
        break

seq = ''
for line in fh:
    if line[0] == ">":
        if len(seq) > 0:
            for j in range(0, len(alCols)):
                print(seq[alCols[j]],end='')
                #if j+1 < len(alCols) and alCols[j+1] > alCols[j]+1:
                #    print(end='')
            print()
        #    print ('>Rattus-norvegicus')
        #else:
        print(line.strip())
        seq = ''
        continue
    seq += line.strip()
fh.close()    

for j in range(0, len(alCols)):
    print(seq[alCols[j]],end='')
    #if j+1 < len(alCols) and alCols[j+1] > alCols[j]+1:
    #    print(' ',end='')
print()

