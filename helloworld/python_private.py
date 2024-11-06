class Employee:
    def __init__(self, name, age, salary):
        self.__salary = salary  # Private attribute

    def get_salary(self):
        return self.__salary  # Accessing private attribute within the class


emp = Employee("John", 30, 50000)

# This will raise an AttributeError as it's private
# print(emp.__salary)

# Accessing private attribute using getter method
print(emp.get_salary())  # Output: 50000

# Name mangling: Can still access private attribute with a special syntax
print(emp._Employee__salary)  # Not recommended, but works
