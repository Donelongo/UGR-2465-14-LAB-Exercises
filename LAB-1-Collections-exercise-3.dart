//Exercise 3

void main() {
  Map<String, int> studentMarks = {};

  studentMarks.putIfAbsent('Jo', () => 85);
  studentMarks.putIfAbsent('Natan', () => 90);
  studentMarks.putIfAbsent('Yididiya', () => 78);
  studentMarks.putIfAbsent('Abebe', () => 92);

  print("Student names and marks:");
  studentMarks.forEach((name, marks) {
    print("$name: $marks");
  });

  String searchName = 'Jo';
  if (studentMarks.containsKey(searchName)) {
    print("\n$searchName's marks: ${studentMarks[searchName]}");
  } else {
    print("\n$searchName not found in the map.");
  }
}
