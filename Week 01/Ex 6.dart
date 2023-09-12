// Ask the user for a string and print out whether this string is a palindrome or not.

import 'dart:io';

void main() {
  stdout.write("Enter a string: ");
  String string = stdin.readLineSync()!;
  String reversedString = string.split('').reversed.join('');
  if (string == reversedString) {
    print("The string is a palindrome");
  } else {
    print("The string is not a palindrome");
  }
}
