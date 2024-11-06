try:
    number = int(input("Enter a number: "))
    result = 10 / number
    print(f"The result is: {result}")
except ZeroDivisionError:
    print("Error: You cannot divide by zero.")
except ValueError:
    print("Error: Invalid input. Please enter a valid number.")
else:
    print("No exceptions occurred!")
finally:
    print("This block runs no matter what.")
