//Exercise 2

import 'dart:io';

void main() {

  const speedOfLight = 299792458; // meters per second

  print("Enter the distance in meters:");
  String input = stdin.readLineSync() ?? "";
  double distance = double.tryParse(input) ?? 0.0;

  // Calculate time using the formula: time = distance / speed
  double time = distance / speedOfLight;

  print("Time for light to travel $distance meters is $time seconds.");
}