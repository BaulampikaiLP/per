#remove() method removes the specified item


list1=["apple","banana","cherry"]
list1.remove("banana")
print(list1)

#pop()

list1 = ["apple", "banana", "cherry"]
list1.pop(2)
print(list1)

# the pop() method removes the last item.

list1 = ["apple", "banana", "cherry"]
list1.pop()
print(list1)

#del keyword also removes the specified index

list1 = ["apple", "banana", "cherry"]
del list1[0]
print(list1)

list1 = ["apple", "orange", "cherry"]
del list1

#Clear the list
#The clear() method empties the list.
#The list still remains, but it has no content.

list2=["apple", "orange", "cherry"]
list2.clear()
print(list2)