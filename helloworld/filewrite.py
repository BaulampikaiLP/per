file = open('fruits.txt', 'w')
file.write("banana")
file.close()

file = open('fruits.txt', 'r+')
print(file.read())
