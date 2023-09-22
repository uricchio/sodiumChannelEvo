import sys

print("1")

fh = open(sys.argv[1],'r')

data = fh.read()

num = data.count(">")

for i in range(2, num+2):
    print(i, end=' ')
print()

