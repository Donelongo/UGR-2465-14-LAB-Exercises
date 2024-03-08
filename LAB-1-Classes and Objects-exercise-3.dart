//Exercise 3

class Rectangle {
  double width;
  double height;

  // Constructor
  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  Rectangle rectangle = Rectangle(5.0, 3.0);

  double area = rectangle.calculateArea();
  print('Area of the rectangle: $area');

  double perimeter = rectangle.calculatePerimeter();
  print('Perimeter of the rectangle: $perimeter');
}
