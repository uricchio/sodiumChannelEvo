import sys


# positions obtained from Gendreau et al MBE 2021, Fig 3
#DI (400 - 404)
#DII (755 - 759)
#DIII (1232 - 1241)
#DIV (1524 - 1533)

cols = [399,400,401,402,403,754,755,756,757,758,1231,1232,1233,1234,1235,1236,1237,1238,1239,1240,1523,1524,1525,1526,1527,1528,1529,1530,1531,1532]
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

