// Exercise 4

import 'dart:io';

void main() {
  // Prompt the user to enter a grade
  print("Enter your grade:");

  // Read the input from the user
  String input = stdin.readLineSync() ?? "";
  double grade = double.tryParse(input) ?? 0.0;

  String letterGrade;
  if (grade >= 90.0 && grade <= 100.0) {
    letterGrade = 'A+';
  } else if (grade >= 85.0 && grade < 90.0) {
    letterGrade = 'A';
  } else if (grade >= 80.0 && grade < 85.0) {
    letterGrade = 'A-';
  } else if (grade >= 75.0 && grade < 80.0) {
    letterGrade = 'B+';
  } else if (grade >= 70.0 && grade < 75.0) {
    letterGrade = 'B';
  } else if (grade >= 65.0 && grade < 70.0) {
    letterGrade = 'B-';
  } else if (grade >= 60.0 && grade < 65.0) {
    letterGrade = 'C+';
  } else if (grade >= 55.0 && grade < 60.0) {
    letterGrade = 'C';
  } else {
    letterGrade = 'F';
  }

  print("Your letter grade is: $letterGrade");
}