thisset = {"apple", "banana", "cherry"}
print(thisset)

#duplicates not allowed

set1 = {"apple", "banana", "cherry", "apple"}

print(set1)

thisset = {"apple", "banana", "cherry"}

for x in thisset:
  print(x)

#check if

print("banana" in thisset)

#check if not

print("banana" not in thisset)

#Add item

thisset.add("orange")

print(thisset)

#add set
thisset = {"apple", "banana", "cherry"}
set2 = {"pineapple", "mango", "papaya"}

thisset.update(set2)

print(thisset)

#add any iterable

thisset = {"apple", "banana", "cherry"}
mylist = ["kiwi", "orange"]

thisset.update(mylist)

print(thisset)

# Remove Set Items using remove()

thisset = {"apple", "banana", "cherry"}

thisset.remove("banana")

print(thisset)

# Remove Set Items using discard()

thisset = {"apple", "banana", "cherry"}

thisset.discard("apple")

print(thisset)

#pop() method

thisset = {"apple", "banana", "cherry"}

x = thisset.pop()

print(x)

print(thisset)

#clear method

thisset = {"apple", "banana", "cherry"}

thisset.clear()

print(thisset)

#del() method

thisset = {"apple", "banana", "cherry"}

del thisset

#print(thisset)#this will raise an error because the set no longer exists
