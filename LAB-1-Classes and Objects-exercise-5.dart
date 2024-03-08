import 'dart:math';

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}
class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  Circle circle = Circle(5.0);

  print('Area of the circle: ${circle.calculateArea().toStringAsFixed(2)}');

  Square square = Square(4.0);

  print('Area of the square: ${square.calculateArea()}');
}
