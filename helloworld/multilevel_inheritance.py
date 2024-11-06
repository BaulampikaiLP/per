# Base class (Grandparent)
class Animal:
    def eat(self):
        print("Animal is eating")

# Derived class (Parent)
class Mammal(Animal):
    def walk(self):
        print("Mammal is walking")

# Further derived class (Child)
class Dog(Mammal):
    def bark(self):
        print("Dog is barking")

# Create an object of Dog class
dog = Dog()

# Call methods from the classes
dog.eat()   # Inherited from Animal class
dog.walk()  # Inherited from Mammal class
dog.bark()  # Defined in Dog class
