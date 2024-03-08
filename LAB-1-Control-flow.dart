// Exercise 1

import 'dart:io';

void main() {

  print("Enter a number:");

  String input = stdin.readLineSync() ?? "";
  int number = int.tryParse(input) ?? 0;


  if (number % 2 == 0) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }
}



// Exercise 2

void main() {

  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}


//Exercise 3

import 'dart:io';

void main() {
  print("Enter the first number:");
  String input1 = stdin.readLineSync() ?? "";
  double num1 = double.tryParse(input1) ?? 0.0;

  print("Enter the second number:");
  String input2 = stdin.readLineSync() ?? "";
  double num2 = double.tryParse(input2) ?? 0.0;

  print("Choose an operation:");
  print("1. Addition (+)");
  print("2. Subtraction (-)");
  print("3. Multiplication (*)");
  print("4. Division (/)");

  String operationChoice = stdin.readLineSync() ?? "";
  int choice = int.tryParse(operationChoice) ?? 0;

  double result;
  switch (choice) {
    case 1:
      result = num1 + num2;
      print("Result: $num1 + $num2 = $result");
      break;
    case 2:
      result = num1 - num2;
      print("Result: $num1 - $num2 = $result");
      break;
    case 3:
      result = num1 * num2;
      print("Result: $num1 * $num2 = $result");
      break;
    case 4:
      if (num2 != 0) {
        result = num1 / num2;
        print("Result: $num1 / $num2 = $result");
      } else {
        print("Error: Division by zero!");
      }
      break;
    default:
      print("Invalid choice!");
  }
}
