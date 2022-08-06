import sys
import json

f = open(sys.argv[1], 'r')

data = json.load(f)
  
for i in range(0, len(data['MLE']['content']['0'])):
    print (i,data['MLE']['content']['0'][i])
    #for name2 in data[name]:
        #print(name, name2, data[name][name2])
  
f.close()


