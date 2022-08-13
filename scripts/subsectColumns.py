# 

#307 0.0414683243057198
#"pois2" "4" 640 0.001223161820851
#"pois3" "4" 750 0.024496090466414
#"pois4" "4" 779 1.11278399262756e-07
#"pois5" "4" 1068 1.45825724773341e-06
#"pois6" "4" 1137
#"pois7" "5" 70 0.00444037059765494
#"pois8" "5" 97 0.0393245281032867
#"pois9" "5" 489 0.0215129263837979
#"pois10" "5" 493 0.000803056850248335
#"pois15" "5" 1368 9.37532141946241e-05
#"pois19" "8" 818 0.0471290581794388
#"pois21" "8" 1086 0.0492739760828268
#"pois23" "8" 1591 0.00427790122354255
#"pois24" "8" 1661 0.00717139306461491
import sys

cols = [int(x)-1 for x in sys.argv[2:]]

fh = open(sys.argv[1],'r')

data = {}
name = ''
for line in fh:
    if line[0] == ">":
        name = line.strip()
        continue
    if name not in data:
        data[name] = ''
    data[name] += line.strip()

for name in data:
    print(name)
    for col in cols:
        print(data[name][col],end='')
    print() 


