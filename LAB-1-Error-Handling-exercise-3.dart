//Exersice 3

import 'dart:io';

void main() {
  readFile('example.txt');
}

void readFile(String filePath) {
  try {
    File file = File(filePath);
    List<String> lines = file.readAsLinesSync();
    print("File contents:");
    lines.forEach((line) => print(line));
  } catch (e) {
    if (e is FileSystemException) {
      print("Error: File not found or cannot be read.");
    } else {
      print("An unexpected error occurred: $e");
    }
  }
}
