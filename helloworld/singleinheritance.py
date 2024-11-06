class Vehicle:
    no_of_wheels = 4

    def moveForward(self):
        print("vehicle is moving forward")


class Car(Vehicle):
    no_of_airbags = 3


car1 = Car()
print(car1.no_of_airbags)
print(car1.no_of_wheels)
