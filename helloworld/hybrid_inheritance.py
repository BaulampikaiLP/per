# Base class 1
class Animal:
    def eat(self):
        print("Animal is eating")

# Base class 2
class Bird:
    def fly(self):
        print("Bird is flying")

# Derived class (Parent) using multilevel inheritance
class Mammal(Animal):
    def walk(self):
        print("Mammal is walking")

# Derived class (Child) using multiple inheritance
class Bat(Mammal, Bird):
    def hang(self):
        print("Bat is hanging upside down")

# Create an object of Bat class
bat = Bat()

# Call methods from different classes
bat.eat()   # Inherited from Animal class (multilevel)
bat.walk()  # Inherited from Mammal class (multilevel)
bat.fly()   # Inherited from Bird class (multiple)
bat.hang()  # Defined in Bat class
