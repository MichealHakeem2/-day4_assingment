/*
  Task 5: Car Fuel Calculator
  
  Details:
  Create a Car class with:
  - Attributes: brand, model, fuel, fuelConsumption
    fuel represents the current amount of fuel in liters.
    fuelConsumption represents how many liters the car uses per 100 km.
  - Create these methods:
    drive(double distance)
      Calculates how much fuel is needed for the distance.
      If there is enough fuel, subtract it from the fuel attribute.
      If there isn't enough fuel, print "Not enough fuel!".
    refuel(double amount) -> adds fuel.
    showInfo() -> prints the car's information and current fuel.
*/

class Car {
  String brand;
  String model;
  double fuel;
  double fuelConsumption;

  Car(this.brand, this.model, this.fuel, this.fuelConsumption);

  void drive(double distance) {
    double neededFuel = (distance / 100) * fuelConsumption;
    if (fuel >= neededFuel) {
      fuel -= neededFuel;
      print('Drove ${distance} km. Used ${neededFuel.toStringAsFixed(1)}L fuel.');
    } else {
      print('Not enough fuel!');
    }
  }

  void refuel(double amount) {
    fuel += amount;
    print('Refueled ${amount}L. Current fuel level: ${fuel}L');
  }

  void showInfo() {
    print('Car Brand: $brand');
    print('Model: $model');
    print('Fuel Level: ${fuel.toStringAsFixed(1)} liters');
    print('Fuel Consumption: ${fuelConsumption}L / 100km');
    print('-------------------');
  }
}

void main() {
  Car myCar = Car('Hyundai', 'Elantra', 20.0, 7.5);

  myCar.showInfo();
  myCar.drive(150); // needs 11.25L fuel, has 20.0L -> success
  myCar.drive(200); // needs 15.0L fuel, has 8.75L -> fails ("Not enough fuel!")
  myCar.refuel(30); // refuels 30L
  myCar.drive(200); // try driving again -> success
  myCar.showInfo();
}
