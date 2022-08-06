
import sys

fh = open(sys.argv[1],'r')

nextLine = ''
for line in fh:
    if line[0] == ">":  
        if nextLine != '':
            print(nextLine)
            nextLine = ''
        print(line.strip())
    else:
        nextLine += line.strip()
print(nextLine)
