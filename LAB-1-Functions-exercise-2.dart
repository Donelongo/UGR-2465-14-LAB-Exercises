//Exercise 2

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  int start = 3;
  int end = 10;

  bool primeFound = false;
  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      primeFound = true;
      print('$i is a prime number.');
    }
  }

  if (!primeFound) {
    print('No prime numbers found in the range from $start to $end.');
  }
}
