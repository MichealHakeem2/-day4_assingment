void main() {
  Student student1 = Student('Mohamed', 1, 'mohamed@gmail', 3.5);
  Student student2 = Student('Mona', 2, 'mona@gmail', 3.7);
  Student student3 = Student('Omar', 3, 'omar@gmail', 2.9);
  student1.displayInfo();
  student2.displayInfo();
  student3.displayInfo();
}
class Student{
  String name;
  int id;
  String email;
  double gpa;
  Student(this.name, this.id,this.email, this.gpa);
  void displayInfo() {
    print('Student Name: $name');
    print('ID: $id');
    print('Email: $email');
    print('GPA: $gpa');
    print('-------------------');
  }
}