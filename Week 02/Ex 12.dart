// Write a program that asks the user how many Fibonnaci numbers to generate and then
// generates them. Take this opportunity to think about how you can use functions.
// Make sure to ask the user to enter the number of numbers in the sequence to generate.

import 'dart:io';

void main() {
  print('How many Fibonnaci numbers do you want to generate?');
  int n = int.parse(stdin.readLineSync()!);
  List<int> fib = Fibonnaci(n);
  print(fib);
}

List<int> Fibonnaci(int n) {
  List<int> fib = [0, 1];
  for (int i = 2; i < n; i++) {
    fib.add(fib[i - 1] + fib[i - 2]);
  }
  return fib;
}
