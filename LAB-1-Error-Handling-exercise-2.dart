//Exercise 2

double? divideNumbers(double dividend, double divisor) {
  try {
    double result = dividend / divisor;
    return result;
  } catch (e) {
    print("Error: Division by zero is not allowed.");
    return null;
  }
}

void main() {
  double dividend = 10;
  double divisor = 0;

  double? result = divideNumbers(dividend, divisor);
  if (result != null) {
    print("Result: $result");
  }
}
