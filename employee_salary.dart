class Employee {
  String name;
  int id;
  double salary;

  Employee(this.name, this.id, this.salary);

  void increaseSalary(double percentage) {
    salary += salary * (percentage / 100);
  }

  void displayEmployee() {
    print('Employee ID: $id');
    print('Name: $name');
    print('Salary: \$${salary.toStringAsFixed(2)}');
    print('-------------------');
  }
}

void main() {
  Employee emp1 = Employee('Sara Ibrahim', 101, 7000.0);
  Employee emp2 = Employee('Khaled Tarek', 102, 9500.0);

  print('--- Initial Details ---');
  emp1.displayEmployee();
  emp2.displayEmployee();

  emp1.increaseSalary(10); // 10% raise
  emp2.increaseSalary(15); // 15% raise

  print('--- After Salary Increase ---');
  emp1.displayEmployee();
  emp2.displayEmployee();
}
