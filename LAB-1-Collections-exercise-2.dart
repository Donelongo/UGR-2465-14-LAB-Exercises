//Exersice 2


import 'dart:math';

void main() {
  List<int> randomNumbers = List.generate(20, (_) => Random().nextInt(20));

  print("List of random numbers:");
  print(randomNumbers);

  Set<int> uniqueNumbers = Set<int>.from(randomNumbers);

  print("\nUnique numbers:");
  print(uniqueNumbers);
}
