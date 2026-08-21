/*
  Task 2: Rectangle Calculator
  
  Details:
  Create a Rectangle class with:
  - Attributes: width, height
  - A constructor to initialize them.
  - A method calculateArea() -> returns the area.
  - A method calculatePerimeter() -> returns the perimeter.
  - A method isSquare() -> returns true if width and height are equal.
  Create a rectangle and print all results.
*/

class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }

  bool isSquare() {
    return width == height;
  }
}

void main() {
  Rectangle r1 = Rectangle(6.0, 6.0);
  Rectangle r2 = Rectangle(8.0, 4.0);

  print('--- Rectangle 1 ---');
  print('Width: ${r1.width}, Height: ${r1.height}');
  print('Area: ${r1.calculateArea()}');
  print('Perimeter: ${r1.calculatePerimeter()}');
  print('Is Square: ${r1.isSquare()}');

  print('\n--- Rectangle 2 ---');
  print('Width: ${r2.width}, Height: ${r2.height}');
  print('Area: ${r2.calculateArea()}');
  print('Perimeter: ${r2.calculatePerimeter()}');
  print('Is Square: ${r2.isSquare()}');
}
