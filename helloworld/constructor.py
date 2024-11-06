class Car:
    def __init__(self, brand, model, year):
        self.brand = brand
        self.model = model
        self.year = year

    def display_info(self):
        print(f"Car Brand: {self.brand}, Model: {self.model}, Year: {self.year}")


# Create an instance (object) of the Car class
my_car = Car("Toyota", "Corolla", 2020)

# Call the method to display information
my_car.display_info()
