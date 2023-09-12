// Ask the user for a number and determine whether the number is prime or not.
// Do it using a function

void main() {
  int num = 3566;

  bool res = isPrime(num);

  if (res) {
    print("The number is prime");
  } else {
    print("The number is not prime");
  }
}

bool isPrime(int num) {
  for (int x = 2; x < num; x++) {
    if (num % x == 0) {
      return false;
    }
  }
  return true;
}
