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