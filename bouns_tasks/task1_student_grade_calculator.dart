/*
  Task 1: Student Grade Calculator
  
  Details:
  Create a Student class with:
  - Attributes: name, age, grade
  - A constructor to initialize all attributes.
  - A method isPassed() that returns true if the grade is 50 or higher.
  - A method printInfo() that prints the student's information and whether they passed.
  Create 3 students and test your methods.
*/
class Student {
  String name;
  int age;
  double grade;
  Student(this.name, this.age, this.grade);
  bool isPassed() {
    return grade >= 50;
  }
  void printInfo() {
    print('Student Name: $name');
    print('Age: $age');
    print('Grade: $grade');
    print('Status: ${isPassed() ? "Passed" : "Failed"}');
    print('-------------------');
  }
}
void main() {
  Student s1 = Student('Ahmed Hassan', 20, 75.5);
  Student s2 = Student('Mona Ali', 21, 42.0);
  Student s3 = Student('Omar Khaled', 19, 88.0);

  s1.printInfo();
  s2.printInfo();
  s3.printInfo();
}
