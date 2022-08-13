import sys
fh = open(sys.argv[1],'r')

seq = ''
for line in fh:
    if line[0] == ">":
        continue
    seq += line.strip() 
print(seq.find('DYWEN'))

