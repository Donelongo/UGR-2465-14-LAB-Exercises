// Exercise 2

class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void display() {
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
  }
}

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  int calculateTotalMarks() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }

  double calculateAverageMarks() {
    if (marks.isEmpty) {
      return 0.0;
    }
    int total = calculateTotalMarks();
    return total / marks.length;
  }

  @override
  void display() {
    super.display();
    print('Roll Number: $rollNumber');
    print('Marks: $marks');
  }
}

void main() {

  Student student1 = Student('Natan', 20, 'Gerji', 101, [85, 90, 95]);
  Student student2 = Student('jo', 22, 'kebena', 102, [75, 80, 85]);

  print('Details of student1:');
  student1.display();
  print('');

  print('Details of student2:');
  student2.display();
  print('');

  print('Total marks of student1: ${student1.calculateTotalMarks()}');
  print('Average marks of student1: ${student1.calculateAverageMarks()}');
  print('');

  print('Total marks of student2: ${student2.calculateTotalMarks()}');
  print('Average marks of student2: ${student2.calculateAverageMarks()}');
}

