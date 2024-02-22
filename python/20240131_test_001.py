import random

listA = []
for i in range(0, 100) :
    random_number = random.randrange(1,1000)
    format_number = str(random_number).zfill(4)
    listA.append(format_number)
# print(f'{listA}')
for i in listA:
    print(i)