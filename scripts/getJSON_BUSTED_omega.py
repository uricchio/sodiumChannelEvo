import sys
import json

f = open(sys.argv[1], 'r')
i = sys.argv[2]
data = json.load(f)
f.close()

for cat in data['fits']['MG94xREV with separate rates for branch sets']['Rate Distributions']['non-synonymous/synonymous rate ratio for *background*']:
    for t in cat:
        print('Background', i, t)
        break

for cat in data['fits']['MG94xREV with separate rates for branch sets']['Rate Distributions']['non-synonymous/synonymous rate ratio for *test*']:
    for t in cat:
        print('Test', i, t)
        break

