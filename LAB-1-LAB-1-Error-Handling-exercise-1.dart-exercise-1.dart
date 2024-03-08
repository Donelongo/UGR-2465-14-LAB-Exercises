//Exercise 1

void main() {
  List<String> favoriteHobbies = ['Reading', 'Gardening', 'Photography'];

  favoriteHobbies.add('Cooking');
  print("After adding a new hobby: $favoriteHobbies");

  favoriteHobbies.remove('Gardening');
  print("After removing a hobby: $favoriteHobbies");

  favoriteHobbies.sort();
  print("After sorting hobbies alphabetically: $favoriteHobbies");

  if (favoriteHobbies.isEmpty) {
    print("The list of favorite hobbies is empty.");
  } else {
    print("The list of favorite hobbies is not empty.");
  }
}

