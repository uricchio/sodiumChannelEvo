import sys
import json

f = open(sys.argv[1], 'r')
i = sys.argv[2]
data = json.load(f)
f.close()

for cat in data['fits']['Unconstrained model']['Rate Distributions']['Test']:
    print('Test',i, cat, end =' ')
    for thing in  data['fits']['Unconstrained model']['Rate Distributions']['Test'][cat]:
       print ( data['fits']['Unconstrained model']['Rate Distributions']['Test'][cat][thing], end =' ')
    print()

for cat in data['fits']['Unconstrained model']['Rate Distributions']['Background']:
    print('Background', i, cat, end =' ')
    for thing in  data['fits']['Unconstrained model']['Rate Distributions']['Background'][cat]:
       print (data['fits']['Unconstrained model']['Rate Distributions']['Background'][cat][thing], end =' ')
    print()
