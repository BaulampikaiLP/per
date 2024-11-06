x = 10
if x > 10:
    print("x is greater than 10")
elif x == 10:
    print("x is equal to 10")
else:
    print("x is less than 10")

#while loop
count = 0
while count < 5:
    print(count)
    count += 1

#for loop
fruits = ["apple", "banana", "cherry"]
for fruit in fruits:
    print(fruit)

#break
for i in range(10):
    if i == 5:
        break  # Exit the loop when i equals 5
    print(i)

#continue
for i in range(5):
    if i == 3:
        continue  # Skip the iteration when i equals 3
    print(i)

#pass
for i in range(5):
    if i == 3:
        pass  # Placeholder
    print(i)

for i in range(5):
    print(i)
else:
    print("Loop finished without break")

#excaption handling
try:
    result = 10 / 0
except ZeroDivisionError:
    print("Cannot divide by zero")
finally:
    print("This block is always executed")


#match statements
def http_status(status):
    match status:
        case 200:
            return "OK"
        case 404:
            return "Not Found"
        case _:
            return "Unknown status"


print(http_status(200))
