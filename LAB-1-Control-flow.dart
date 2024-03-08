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
