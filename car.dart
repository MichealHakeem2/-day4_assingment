class Car {
  String brand;
  String model;
  int year;
  int speed = 0;
  Car(this.brand, this.model, this.year);
  void accelerate() {
    speed += 10;
    print('Accelerating... Speed is now $speed km/h');
  }
  void brake() {
    speed -= 10;
    if (speed < 0) {
      speed = 0;
    }
    print('Braking... Speed is now $speed km/h');
  }
  void displayInfo() {
    print('Car Brand: $brand');
    print('Model: $model');
    print('Year: $year');
    print('Current Speed: $speed km/h');
    print('-------------------');
  }
}
void main() {
  Car myCar = Car('Toyota', 'Corolla', 2022);
  myCar.displayInfo();
  myCar.accelerate();
  myCar.accelerate();
  myCar.brake();
  myCar.brake();
  myCar.brake(); 
  myCar.displayInfo();
}