class Student {
  String name;
  int id;
  double math;
  double english;
  double science;

  Student(this.name, this.id, this.math, this.english, this.science);

  double calculateAverage() {
    return (math + english + science) / 3;
  }

  String getResult() {
    double avg = calculateAverage();
    if (avg >= 90) {
      return 'Excellent';
    } else if (avg >= 80) {
      return 'Very Good';
    } else if (avg >= 70) {
      return 'Good';
    } else if (avg >= 50) {
      return 'Pass';
    } else {
      return 'Fail';
    }
  }

  void displayReport() {
    print('======== STUDENT REPORT ========');
    print('ID: $id');
    print('Name: $name');
    print('Math: $math');
    print('English: $english');
    print('Science: $science');
    print('Average Grade: ${calculateAverage().toStringAsFixed(2)}');
    print('Result: ${getResult()}');
    print('================================\n');
  }
}

void main() {
  Student s1 = Student('Nour El-Din', 201, 95.0, 92.5, 88.0);
  Student s2 = Student('Yasmine Amr', 202, 78.0, 82.0, 85.0);
  Student s3 = Student('Karim Mahmoud', 203, 45.0, 52.0, 48.0);

  s1.displayReport();
  s2.displayReport();
  s3.displayReport();
}
