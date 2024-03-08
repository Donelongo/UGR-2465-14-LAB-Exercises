//Exercise 5

class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0;
    }
    int totalMarks = marks.reduce((value, element) => value + element);
    return totalMarks / marks.length;
  }
}

void main() {
  Student student1 = Student('Natan', [85, 90, 78]);
  print("${student1.name}'s average mark: ${student1.calculateAverageMark()}");

  Student student2 = Student('Jo', []);
  print("${student2.name}'s average mark: ${student2.calculateAverageMark()}");
}
