#union

set1 = {"a", "b", "c"}
set2 = {1, 2, 3}

set3 = set1.union(set2)
print(set3)

#'|' operator

set4 = set1 | set2
print(set4)

#Join a set and a tuple

x = {"a", "b", "c"}
y = (1, 2, 3)

z = x.union(y)
print(z)

#intersection
set5 = {"apple", "banana", "cherry"}
set6 = {"google", "microsoft", "apple"}

set7 = set5.intersection(set6)
print(set7)

#'&' operator

set8 = set5 & set6
print(set8)

#difference()

set9 = set5.difference(set6)
print(set9)

#symmetric_difference() method
set1 = {"apple", "banana", "cherry"}
set2 = {"google", "microsoft", "apple"}

set3 = set1.symmetric_difference(set2)

print(set3)