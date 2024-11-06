#capitailze
txt = "hello, and welcome to my world."

x = txt.capitalize()

print(x)

#casefold
txt1 = "HEllo, And Welcome To My World!"

x1 = txt1.casefold()

print(x1)

#center
txt3 = "banana"
x2 = txt3.center(10)
print(x2)

#count
txt4 = "I love apples, apple are my favorite fruit and apple is good for health"

x4 = txt4.count("apple")

print(x4)

#encode
txt5 = "My name is Ståle"

print(txt5.encode(encoding="ascii", errors="backslashreplace"))
print(txt5.encode(encoding="ascii", errors="ignore"))
print(txt5.encode(encoding="ascii", errors="namereplace"))
print(txt5.encode(encoding="ascii", errors="replace"))
print(txt5.encode(encoding="ascii", errors="xmlcharrefreplace"))

#endswith()
txt6 = "Hello, welcome to my world."

x = txt6.endswith("my world.")

print(x)

#expandtabs()

txt7 = "H\te\tl\tl\to"

x = txt7.expandtabs(2)

print(x)

#find()
x = txt6.find("e", 5, 10)

print(x)

#isalnum()

txt8 = "Hello123"
x = txt8.isalnum()
print(x)

#isalpha()

txt9 = "HelloA"
x = txt9.isalpha()
print(x)

#isascii()

x = txt8.isascii()
print(x)

#isdecimal()
txt10 = "1234"

x = txt10.isdecimal()

print(x)

#isdigit()

txt11 = "50800"

x = txt11.isdigit()

print(x)

#islower()

txt12 = "hello world"
x12 = txt12.islower()
print("lower:", x12)

#isupper()

txt13 = "HELLO WORLD"
x13 = txt13.isupper()
print("upper:", x13)

txt14 = "565543"

x14 = txt14.isnumeric()

print("numeric:", x14)

txt15 = "     "

x15 = txt15.isspace()

print("space:", x15)

txt16 = "Hello, And Welcome To My World!"

x16 = txt16.istitle()

print("title:", x16)

myTuple = ("John", "Peter", "Vicky")

x17 = "#".join(myTuple)

print(x17)

txt18 = "apple"

x18 = txt18.rjust(20)

print(x18, "is my favorite fruit.")

x19 = txt18.ljust(20)
print(x19, "is my favorite fruit.")

txt20 = "     apple     "

x20 = txt20.lstrip()

print(x20, "is my favorite")

x21 = txt20.rstrip()
print(x21, "is my favorite")

txt22 = "I could eat apples all day"

x22 = txt22.partition("apples")

print(x22)

txt23 = "hello world hi"

x23 = txt23.rfind("h")

print(x23)

txt24 = "Thank you for the music\nWelcome to all"

x24 = txt24.splitlines()

print(x24)

txt25 = "50"

x25 = txt25.zfill(5)

print(x25)
