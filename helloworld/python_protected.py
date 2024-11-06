class Employee:
    def __init__(self, name, age, salary):
        self._salary = salary  # Protected attribute


class Manager(Employee):
    def display_salary(self):
        print(f"Manager salary: {self._salary}")  # Accessible within a subclass


emp = Employee("John", 30, 50000)
print(emp._salary)  # Accessing protected attribute (discouraged but allowed)

mgr = Manager("Alice", 40, 70000)
mgr.display_salary()  # Accessing protected attribute in subclass
