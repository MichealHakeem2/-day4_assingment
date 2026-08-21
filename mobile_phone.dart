class MobilePhone {
  String brand;
  String model;
  int storage;
  int battery;

  MobilePhone(this.brand, this.model, this.storage, this.battery);

  void usePhone(int hours) {
    battery -= hours * 10;
    if (battery < 0) {
      battery = 0;
    }
    print('Used phone for $hours hours. Battery level: $battery%');
  }

  void chargePhone() {
    battery = 100;
    print('Phone fully charged! Battery level: 100%');
  }

  void displayInfo() {
    print('Brand: $brand');
    print('Model: $model');
    print('Storage: ${storage}GB');
    print('Battery: $battery%');
    print('-------------------');
  }
}

void main() {
  MobilePhone phone = MobilePhone('Samsung', 'Galaxy S23', 256, 80);

  phone.displayInfo();

  phone.usePhone(3);
  phone.usePhone(6); // should drop to zero instead of negative

  phone.displayInfo();

  phone.chargePhone();
  phone.displayInfo();
}
