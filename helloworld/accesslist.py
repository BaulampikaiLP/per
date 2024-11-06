list1 = ["apple", "orange", "cherry"]
print(list1[1])

#negative indexing

print(list1[-1])

#range of indexes

list2 = ["apple", "orange", "banana", "cherry", "kiwi", "mango", "grapes"]
print(list2[2:5])

#start value

print(list2[:4])

#end value

print(list2[0:])

#negative index

print(list2[-4:-1])

#check if item is present

if "kiwi" in list2:
    print("yes,'kiwi' is in the list")