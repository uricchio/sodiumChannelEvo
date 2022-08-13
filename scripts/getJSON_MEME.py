import sys
import json

f = open(sys.argv[1], 'r')
k = int(sys.argv[2])
data = json.load(f)
f.close()

for i in range(0, len(data['MLE']['content']['0'])):
    if i == k-1:
        print (i, end=' ')
        for thing in data['MLE']['content']['0'][i]:
            print(thing, end=' ')
        print()

