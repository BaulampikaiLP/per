class Employee:
    def __init__(self, name, age):
        self.name = name  # Public attribute
        self.age = age  # Public attribute


emp = Employee("John", 30)
print(emp.name)  # Accessible outside the class
print(emp.age)  # Accessible outside the class
