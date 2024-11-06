#change item value
list1 = ["apple", "orange", "cherry"]
list1[1] = "blackcurrant"
print(list1)

#change more than one item using range

list2 = ["apple", "banana", "orange", "grapes", "Cherry", "kiwi", "mango"]
list2[1:3] = ["blackcurrant", "watermelon"]
print(list2)

#change the second value by replacing it with two new values

list1 = ["apple", "banana", "cherry"]
list1[1:2] = ["blackcurrant", "watermelon"]
print(list1)

#insert items
#To insert a new list item, without replacing any of the existing values, we can use the insert() method.

list1 = ["apple", "banana", "cherry"]
list1.insert(2, "watermelon")
print(list1)

#append list items

list1 = ["apple", "banana", "cherry"]
list1.append("orange")
print(list1)

#Extend list

list1 = ["apple", "banana", "cherry"]
list3 = ["mango", "pineapple", "papaya"]
list1.extend(list3)
print(list1)

#Add any iterable
#you can add any iterable object (tuples, sets, dictionaries etc.).
list1 = ["apple", "banana", "cherry"]
tuple1 = ("kiwi", "orange")
list1.extend(tuple1)
print(list1)