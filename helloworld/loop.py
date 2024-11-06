list1 = ["apple", "banana", "cherry"]
for x in list1:
    print(x)

for i in range(len(list1)):
    print(list1[i])

i = 0
while i < len(list1):
    print(list1[i])
    i = i + 1
#list comprehension

fruits = ["apple", "banana", "cherry", "kiwi", "mango"]

newlist = [x for x in fruits if "a" in x]

print(newlist)