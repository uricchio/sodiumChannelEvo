import sys
 
fh = open(sys.argv[1], 'r')

def removeStar(s):
    nL = '' 
    for c in s:
        if c == "*":
            nL += "-"
        else: 
            nL += c
    return nL

prot = ''
for line in fh:
     if line[0] == ">":
         if len(prot) > 0:
             print(prot)
             prot = ''
         print(line.strip())
         continue
     if "*" not in line:
         prot += line.strip()
     else:
         newLine = removeStar(line.strip())
         prot += newLine      
print(prot)

