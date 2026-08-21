class Student {
  String name;
  int age;
  String grade;
  Student(this.name, this.age, this.grade);
  void displayInfo() {
    print('Student Name: $name');
    print('Age: $age');
    print('Grade: $grade');
    print('-------------------');
  }
}
void main() {
  Student student1 = Student('Ahmed Hassan', 20, 'A');
  Student student2 = Student('Mona Ali', 22, 'B');
  Student student3 = Student('Omar Khaled', 19, 'A+');

  student1.displayInfo();
  student2.displayInfo();
  student3.displayInfo();
}
