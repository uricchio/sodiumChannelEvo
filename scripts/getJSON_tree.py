import sys
import json

f = open(sys.argv[1], 'r')
data = json.load(f)
f.close()

print( data['input']['trees']['0']+";")
