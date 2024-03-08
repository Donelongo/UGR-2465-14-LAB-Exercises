// Exercise 1

import 'dart:io';

double sum(double num1, double num2) {
  return num1 + num2;
}

void main() {
  print("Enter the first number:");
  String input1 = stdin.readLineSync() ?? "";
  double number1 = double.tryParse(input1) ?? 0.0;

  print("Enter the second number:");
  String input2 = stdin.readLineSync() ?? "";
  double number2 = double.tryParse(input2) ?? 0.0;

  double result = sum(number1, number2);
  print("The sum of $number1 and $number2 is $result.");
}

