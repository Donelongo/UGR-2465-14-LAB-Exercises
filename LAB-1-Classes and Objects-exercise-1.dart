//Exercise 1

class Person {
  String name;
  int age;
  String address;

  // Constructor
  Person(this.name, this.age, this.address);

  // Method to display person details
  void display() {
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
  }
}

void main() {

  Person person1 = Person('Nathan', 30, 'CMC');
  Person person2 = Person('Jo', 25, 'Giorgis');

  print('Details of person1:');
  person1.display();
  print('');

  print('Details of person2:');
  person2.display();
  print('');

  person2.age = 28;
  person2.address = 'Kebena';

  print('Modified details of person2:');
  person2.display();
}
