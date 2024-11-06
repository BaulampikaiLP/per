a = 10
b = 10.5
c = 6j
print(type(a))
print(type(b))
print(type(c))
s1 = 'Welcome'
print(s1)
print("\nFirst character of String is: ")
print(s1[0])
print("\nLast character of String is: ")
print(s1[-1])
print(type(s1))
List = ["apple", "orange", "Cherry"]
print(type(List))
print(List[0])
x = ("apple", "banana", "cherry")
print(type(x))
y = range(6)
print(y)
print(type(True))
print(type(False))
#print(type(true))
z = {"apple", "banana", "cherry"}
print(type(z))
d = {"name": "John", "age": 36}
print(type(d))
f = frozenset({"apple", "banana", "cherry"})
print(type(f))
bi = bytes([72, 101, 108, 108, 111])
print(bi)
b1 = bytearray([72, 101, 108, 108, 111])
b1[0] = 74
print(b1)
b2 = bytearray(b'Hello')
m = memoryview(b2)
print(m[1:4])  # Output: <memory at 0x...>
print(m[1:4].tobytes())
x1 = None
print(type(x1))